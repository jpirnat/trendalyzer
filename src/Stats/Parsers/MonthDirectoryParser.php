<?php
declare(strict_types=1);

namespace Jp\Dex\Stats\Parsers;

use GuzzleHttp\Client;
use Jp\Dex\Stats\Importers\Extractors\FormatRatingExtractor;
use Jp\Dex\Stats\Repositories\ShowdownFormatRepository;
use Symfony\Component\DomCrawler\Crawler;

class MonthDirectoryParser
{
	/** @var UsageFileParser $usageFileParser */
	protected $usageFileParser;

	/** @var LeadsDirectoryParser $leadsDirectoryParser */
	protected $leadsDirectoryParser;

	/** @var MovesetDirectoryParser $movesetDirectoryParser */
	protected $movesetDirectoryParser;

	/** @var FormatRatingExtractor $formatRatingExtractor */
	protected $formatRatingExtractor;

	/** @var ShowdownFormatRepository $showdownFormatRepository */
	protected $showdownFormatRepository;

	/**
	 * Constructor.
	 *
	 * @param UsageFileParser $usageFileParser
	 * @param LeadsDirectoryParser $leadsDirectoryParser
	 * @param MovesetDirectoryParser $movesetDirectoryParser
	 * @param FormatRatingExtractor $formatRatingExtractor
	 * @param ShowdownFormatRepository $showdownFormatRepository
	 */
	public function __construct(
		UsageFileParser $usageFileParser,
		LeadsDirectoryParser $leadsDirectoryParser,
		MovesetDirectoryParser $movesetDirectoryParser,
		FormatRatingExtractor $formatRatingExtractor,
		ShowdownFormatRepository $showdownFormatRepository
	) {
		$this->usageFileParser = $usageFileParser;
		$this->leadsDirectoryParser = $leadsDirectoryParser;
		$this->movesetDirectoryParser = $movesetDirectoryParser;
		$this->formatRatingExtractor = $formatRatingExtractor;
		$this->showdownFormatRepository = $showdownFormatRepository;
	}

	/**
	 * Parse this month directory for unknown Showdown format names.
	 *
	 * @param string $url
	 *
	 * @return void
	 */
	public function parse(string $url) : void
	{
		// Create the HTTP client.
		$client = new Client([
			'base_uri' => $url,
		]);

		// Get the HTML of the month directory page.
		$html = $client->request('GET', $url)->getBody()->getContents();

		// Create the DOM crawler.
		$crawler = new Crawler($html, $url);

		// Get all the links on the month directory page.
		$links = $crawler->filterXPath('//a[contains(@href, ".txt")]')->links();

		// Parse each usage file link.
		foreach ($links as $link) {
			// Get the format and rating from the filename of the link.
			$filename = pathinfo($link->getUri())['filename'];
			$formatRating = $this->formatRatingExtractor->extractFormatRating($filename);
			$showdownFormatName = $formatRating->showdownFormatName();

			// If the format is unknown, add it to the list of unknown formats.
			if (!$this->showdownFormatRepository->isKnown($showdownFormatName)) {
				$this->showdownFormatRepository->addUnknown($showdownFormatName);
			}

			// Create a stream to read the usage file.
			$stream = $client->request('GET', $link->getUri())->getBody();

			// Parse the usage file.
			$this->usageFileParser->parse($stream);
		}

		// Parse each leads file.
		$this->leadsDirectoryParser->parse($url . 'leads/');

		// Parse each moveset file.
		$this->movesetDirectoryParser->parse($url . 'moveset/');
	}
}