<?php
declare(strict_types=1);

namespace Jp\Dex\Presentation;

use Jp\Dex\Application\Models\MonthFormats\FormatData;
use Jp\Dex\Application\Models\MonthFormats\MonthFormatsModel;
use Psr\Http\Message\ResponseInterface;
use Twig_Environment;
use Zend\Diactoros\Response;

class MonthFormatsView
{
	/** @var Twig_Environment $twig */
	private $twig;

	/** @var MonthFormatsModel $monthFormatsModel */
	private $monthFormatsModel;

	/** @var IntlFormatterFactory $formatterFactory */
	private $formatterFactory;

	/**
	 * Constructor.
	 *
	 * @param Twig_Environment $twig
	 * @param MonthFormatsModel $monthFormatsModel
	 * @param IntlFormatterFactory $formatterFactory
	 */
	public function __construct(
		Twig_Environment $twig,
		MonthFormatsModel $monthFormatsModel,
		IntlFormatterFactory $formatterFactory
	) {
		$this->twig = $twig;
		$this->monthFormatsModel = $monthFormatsModel;
		$this->formatterFactory = $formatterFactory;
	}

	/**
	 * Get the formats list to recreate a stats month directory, such as
	 * http://www.smogon.com/stats/2014-11.
	 *
	 * @return ResponseInterface
	 */
	public function index() : ResponseInterface
	{
		$year = $this->monthFormatsModel->getYear();
		$month = $this->monthFormatsModel->getMonth();

		$formatter = $this->formatterFactory->createFor(
			$this->monthFormatsModel->getLanguageId()
		);

		// Get the previous month and the next month.
		$prevMonth = $this->monthFormatsModel->getDateModel()->getPrevMonth();
		$nextMonth = $this->monthFormatsModel->getDateModel()->getNextMonth();

		// Get format data and sort by name.
		$formatDatas = $this->monthFormatsModel->getFormatDatas();
		uasort(
			$formatDatas,
			function (FormatData $a, FormatData $b) : int {
				return $a->getFormatName() <=> $b->getFormatName();
			}
		);

		// Compile all usage data into the right form.
		$formats = [];
		foreach ($formatDatas as $formatData) {
			$formats[] = [
				'identifier' => $formatData->getFormatIdentifier(),
				'name' => $formatData->getFormatName(),
				'ratings' => $formatData->getRatings(),
			];
		}

		// Navigation breadcrumbs.
		$breadcrumbs = [
			[
				'url' => '/stats',
				'text' => 'Stats',
			],
			[
				'text' => 'Formats',
			]
		];

		$content = $this->twig->render(
			'html/month-formats.twig',
			[
				// TODO: title - "Month Year formats"?
				'breadcrumbs' => $breadcrumbs,

				// The month control's data.
				'showPrevMonthLink' => $this->monthFormatsModel->doesPrevMonthDataExist(),
				'prevYear' => $prevMonth->getYear(),
				'prevMonth' => $prevMonth->getMonth(),
				'prevMonthText' => $formatter->formatYearMonth($prevMonth),
				'showNextMonthLink' => $this->monthFormatsModel->doesNextMonthDataExist(),
				'nextYear' => $nextMonth->getYear(),
				'nextMonth' => $nextMonth->getMonth(),
				'nextMonthText' => $formatter->formatYearMonth($nextMonth),

				'year' => $year,
				'month' => $month,

				// The main data.
				'formats' => $formats,
			]
		);

		$response = new Response();
		$response->getBody()->write($content);
		return $response;
	}
}