<?php
declare(strict_types=1);

namespace Jp\Dex\Infrastructure;

use Jp\Dex\Domain\Pokemon\PokemonId;
use Jp\Dex\Domain\Stats\BaseStatRepositoryInterface;
use Jp\Dex\Domain\Stats\StatId;
use Jp\Dex\Domain\Stats\StatValue;
use Jp\Dex\Domain\Stats\StatValueContainer;
use Jp\Dex\Domain\Versions\GenerationId;
use PDO;

class DatabaseBaseStatRepository implements BaseStatRepositoryInterface
{
	/** @var PDO $db */
	private $db;

	/**
	 * Constructor.
	 *
	 * @param PDO $db
	 */
	public function __construct(PDO $db)
	{
		$this->db = $db;
	}

	/**
	 * Get a Pokémon's base stats by generation and Pokémon.
	 *
	 * @param GenerationId $generationId
	 * @param PokemonId $pokemonId
	 *
	 * @return StatValueContainer
	 */
	public function getByGenerationAndPokemon(
		GenerationId $generationId,
		PokemonId $pokemonId
	) : StatValueContainer {
		$stmt = $this->db->prepare(
			'SELECT
				`stat_id`,
				`value`
			FROM `base_stats`
			WHERE `generation_id` = :generation_id
				AND `pokemon_id` = :pokemon_id'
		);
		$stmt->bindValue(':generation_id', $generationId->value(), PDO::PARAM_INT);
		$stmt->bindValue(':pokemon_id', $pokemonId->value(), PDO::PARAM_INT);
		$stmt->execute();

		$baseStats = new StatValueContainer();

		while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
			$baseStat = new StatValue(
				new StatId($result['stat_id']),
				$result['value']
			);

			$baseStats->add($baseStat);
		}

		return $baseStats;
	}
}
