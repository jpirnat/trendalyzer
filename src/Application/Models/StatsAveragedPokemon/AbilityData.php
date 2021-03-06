<?php
declare(strict_types=1);

namespace Jp\Dex\Application\Models\StatsAveragedPokemon;

final class AbilityData
{
	private string $abilityName;
	private string $abilityIdentifier;
	private float $percent;

	/**
	 * Constructor.
	 *
	 * @param string $abilityName
	 * @param string $abilityIdentifier
	 * @param float $percent
	 */
	public function __construct(
		string $abilityName,
		string $abilityIdentifier,
		float $percent
	) {
		$this->abilityName = $abilityName;
		$this->abilityIdentifier = $abilityIdentifier;
		$this->percent = $percent;
	}

	/**
	 * Get the ability name.
	 *
	 * @return string
	 */
	public function getAbilityName() : string
	{
		return $this->abilityName;
	}

	/**
	 * Get the ability identifier.
	 *
	 * @return string
	 */
	public function getAbilityIdentifier() : string
	{
		return $this->abilityIdentifier;
	}

	/**
	 * Get the percent.
	 *
	 * @return float
	 */
	public function getPercent() : float
	{
		return $this->percent;
	}
}
