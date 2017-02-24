<?php
declare(strict_types=1);

namespace Jp\Dex\Stats\Repositories\Moveset;

use PDO;
use PDOException;

class MovesetRatedCountersRepository
{
	/** @var PDO $db */
	protected $db;

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
	 * Insert a `moveset_rated_counters` record.
	 *
	 * @param int $year
	 * @param int $month
	 * @param int $formatId
	 * @param int $rating
	 * @param int $pokemonId
	 * @param int $counterId
	 * @param float $number1
	 * @param float $number2
	 * @param float $number3
	 * @param float $percentKnockedOut
	 * @param float $percentSwitchedOut
	 *
	 * @return bool
	 */
	public function insert(
		int $year,
		int $month,
		int $formatId,
		int $rating,
		int $pokemonId,
		int $counterId,
		float $number1,
		float $number2,
		float $number3,
		float $percentKnockedOut,
		float $percentSwitchedOut
	) : bool {
		$stmt = $this->db->prepare(
			'INSERT INTO `moveset_rated_counters` (
				`year`,
				`month`,
				`format_id`,
				`rating`,
				`pokemon_id`,
				`counter_id`,
				`number1`,
				`number2`,
				`number3`,
				`percent_knocked_out`,
				`percent_switched_out`
			) VALUES (
				:year,
				:month,
				:format_id,
				:rating,
				:pokemon_id,
				:counter_id,
				:number1,
				:number2,
				:number3,
				:percent_knocked_out,
				:percent_switched_out
			)'
		);
		$stmt->bindValue(':year', $year, PDO::PARAM_INT);
		$stmt->bindValue(':month', $month, PDO::PARAM_INT);
		$stmt->bindValue(':format_id', $formatId, PDO::PARAM_INT);
		$stmt->bindValue(':rating', $rating, PDO::PARAM_INT);
		$stmt->bindValue(':pokemon_id', $pokemonId, PDO::PARAM_INT);
		$stmt->bindValue(':counter_id', $counterId, PDO::PARAM_INT);
		$stmt->bindValue(':number1', $number1, PDO::PARAM_STR);
		$stmt->bindValue(':number2', $number2, PDO::PARAM_STR);
		$stmt->bindValue(':number3', $number3, PDO::PARAM_STR);
		$stmt->bindValue(':percent_knocked_out', $percentKnockedOut, PDO::PARAM_STR);
		$stmt->bindValue(':percent_switched_out', $percentSwitchedOut, PDO::PARAM_STR);
		try {
			return $stmt->execute();
		} catch (PDOException $e) {
			// A record for this key already exists.
			return false;
		}
	}
}