create table if not exists `moves`
(
`id` smallint unsigned not null,

`identifier` varchar(100) not null,
`introduced_in_generation` tinyint unsigned not null,

primary key (`id`),
unique key (`identifier`),
foreign key (`introduced_in_generation`) references `generations` (`generation`)
	on delete restrict
	on update cascade
) engine = InnoDB;


insert into `moves` (
	`id`,
	`identifier`,
	`introduced_in_generation`
) values
(1, "pound", 1),
(2, "karate-chop", 1),
(3, "double-slap", 1),
(4, "comet-punch", 1),
(5, "mega-punch", 1),
(6, "pay-day", 1),
(7, "fire-punch", 1),
(8, "ice-punch", 1),
(9, "thunder-punch", 1),
(10, "scratch", 1),
(11, "vice-grip", 1),
(12, "guillotine", 1),
(13, "razor-wind", 1),
(14, "swords-dance", 1),
(15, "cut", 1),
(16, "gust", 1),
(17, "wing-attack", 1),
(18, "whirlwind", 1),
(19, "fly", 1),
(20, "bind", 1),
(21, "slam", 1),
(22, "vine-whip", 1),
(23, "stomp", 1),
(24, "double-kick", 1),
(25, "mega-kick", 1),
(26, "jump-kick", 1),
(27, "rolling-kick", 1),
(28, "sand-attack", 1),
(29, "headbutt", 1),
(30, "horn-attack", 1),
(31, "fury-attack", 1),
(32, "horn-drill", 1),
(33, "tackle", 1),
(34, "body-slam", 1),
(35, "wrap", 1),
(36, "take-down", 1),
(37, "thrash", 1),
(38, "double-edge", 1),
(39, "tail-whip", 1),
(40, "poison-sting", 1),
(41, "twineedle", 1),
(42, "pin-missile", 1),
(43, "leer", 1),
(44, "bite", 1),
(45, "growl", 1),
(46, "roar", 1),
(47, "sing", 1),
(48, "supersonic", 1),
(49, "sonic-boom", 1),
(50, "disable", 1),
(51, "acid", 1),
(52, "ember", 1),
(53, "flamethrower", 1),
(54, "mist", 1),
(55, "water-gun", 1),
(56, "hydro-pump", 1),
(57, "surf", 1),
(58, "ice-beam", 1),
(59, "blizzard", 1),
(60, "psybeam", 1),
(61, "bubble-beam", 1),
(62, "aurora-beam", 1),
(63, "hyper-beam", 1),
(64, "peck", 1),
(65, "drill-peck", 1),
(66, "submission", 1),
(67, "low-kick", 1),
(68, "counter", 1),
(69, "seismic-toss", 1),
(70, "strength", 1),
(71, "absorb", 1),
(72, "mega-drain", 1),
(73, "leech-seed", 1),
(74, "growth", 1),
(75, "razor-leaf", 1),
(76, "solar-beam", 1),
(77, "poison-powder", 1),
(78, "stun-spore", 1),
(79, "sleep-powder", 1),
(80, "petal-dance", 1),
(81, "string-shot", 1),
(82, "dragon-rage", 1),
(83, "fire-spin", 1),
(84, "thunder-shock", 1),
(85, "thunderbolt", 1),
(86, "thunder-wave", 1),
(87, "thunder", 1),
(88, "rock-throw", 1),
(89, "earthquake", 1),
(90, "fissure", 1),
(91, "dig", 1),
(92, "toxic", 1),
(93, "confusion", 1),
(94, "psychic", 1),
(95, "hypnosis", 1),
(96, "meditate", 1),
(97, "agility", 1),
(98, "quick-attack", 1),
(99, "rage", 1),
(100, "teleport", 1),
(101, "night-shade", 1),
(102, "mimic", 1),
(103, "screech", 1),
(104, "double-team", 1),
(105, "recover", 1),
(106, "harden", 1),
(107, "minimize", 1),
(108, "smokescreen", 1),
(109, "confuse-ray", 1),
(110, "withdraw", 1),
(111, "defense-curl", 1),
(112, "barrier", 1),
(113, "light-screen", 1),
(114, "haze", 1),
(115, "reflect", 1),
(116, "focus-energy", 1),
(117, "bide", 1),
(118, "metronome", 1),
(119, "mirror-move", 1),
(120, "self-destruct", 1),
(121, "egg-bomb", 1),
(122, "lick", 1),
(123, "smog", 1),
(124, "sludge", 1),
(125, "bone-club", 1),
(126, "fire-blast", 1),
(127, "waterfall", 1),
(128, "clamp", 1),
(129, "swift", 1),
(130, "skull-bash", 1),
(131, "spike-cannon", 1),
(132, "constrict", 1),
(133, "amnesia", 1),
(134, "kinesis", 1),
(135, "soft-boiled", 1),
(136, "high-jump-kick", 1),
(137, "glare", 1),
(138, "dream-eater", 1),
(139, "poison-gas", 1),
(140, "barrage", 1),
(141, "leech-life", 1),
(142, "lovely-kiss", 1),
(143, "sky-attack", 1),
(144, "transform", 1),
(145, "bubble", 1),
(146, "dizzy-punch", 1),
(147, "spore", 1),
(148, "flash", 1),
(149, "psywave", 1),
(150, "splash", 1),
(151, "acid-armor", 1),
(152, "crabhammer", 1),
(153, "explosion", 1),
(154, "fury-swipes", 1),
(155, "bonemerang", 1),
(156, "rest", 1),
(157, "rock-slide", 1),
(158, "hyper-fang", 1),
(159, "sharpen", 1),
(160, "conversion", 1),
(161, "tri-attack", 1),
(162, "super-fang", 1),
(163, "slash", 1),
(164, "substitute", 1),
(165, "struggle", 1),
(166, "sketch", 2),
(167, "triple-kick", 2),
(168, "thief", 2),
(169, "spider-web", 2),
(170, "mind-reader", 2),
(171, "nightmare", 2),
(172, "flame-wheel", 2),
(173, "snore", 2),
(174, "curse", 2),
(175, "flail", 2),
(176, "conversion-2", 2),
(177, "aeroblast", 2),
(178, "cotton-spore", 2),
(179, "reversal", 2),
(180, "spite", 2),
(181, "powder-snow", 2),
(182, "protect", 2),
(183, "mach-punch", 2),
(184, "scary-face", 2),
(185, "feint-attack", 2),
(186, "sweet-kiss", 2),
(187, "belly-drum", 2),
(188, "sludge-bomb", 2),
(189, "mud-slap", 2),
(190, "octazooka", 2),
(191, "spikes", 2),
(192, "zap-cannon", 2),
(193, "foresight", 2),
(194, "destiny-bond", 2),
(195, "perish-song", 2),
(196, "icy-wind", 2),
(197, "detect", 2),
(198, "bone-rush", 2),
(199, "lock-on", 2),
(200, "outrage", 2),
(201, "sandstorm", 2),
(202, "giga-drain", 2),
(203, "endure", 2),
(204, "charm", 2),
(205, "rollout", 2),
(206, "false-swipe", 2),
(207, "swagger", 2),
(208, "milk-drink", 2),
(209, "spark", 2),
(210, "fury-cutter", 2),
(211, "steel-wing", 2),
(212, "mean-look", 2),
(213, "attract", 2),
(214, "sleep-talk", 2),
(215, "heal-bell", 2),
(216, "return", 2),
(217, "present", 2),
(218, "frustration", 2),
(219, "safeguard", 2),
(220, "pain-split", 2),
(221, "sacred-fire", 2),
(222, "magnitude", 2),
(223, "dynamic-punch", 2),
(224, "megahorn", 2),
(225, "dragon-breath", 2),
(226, "baton-pass", 2),
(227, "encore", 2),
(228, "pursuit", 2),
(229, "rapid-spin", 2),
(230, "sweet-scent", 2),
(231, "iron-tail", 2),
(232, "metal-claw", 2),
(233, "vital-throw", 2),
(234, "morning-sun", 2),
(235, "synthesis", 2),
(236, "moonlight", 2),
(237, "hidden-power", 2),
(238, "cross-chop", 2),
(239, "twister", 2),
(240, "rain-dance", 2),
(241, "sunny-day", 2),
(242, "crunch", 2),
(243, "mirror-coat", 2),
(244, "psych-up", 2),
(245, "extreme-speed", 2),
(246, "ancient-power", 2),
(247, "shadow-ball", 2),
(248, "future-sight", 2),
(249, "rock-smash", 2),
(250, "whirlpool", 2),
(251, "beat-up", 2),
(252, "fake-out", 3),
(253, "uproar", 3),
(254, "stockpile", 3),
(255, "spit-up", 3),
(256, "swallow", 3),
(257, "heat-wave", 3),
(258, "hail", 3),
(259, "torment", 3),
(260, "flatter", 3),
(261, "will-o-wisp", 3),
(262, "memento", 3),
(263, "facade", 3),
(264, "focus-punch", 3),
(265, "smelling-salts", 3),
(266, "follow-me", 3),
(267, "nature-power", 3),
(268, "charge", 3),
(269, "taunt", 3),
(270, "helping-hand", 3),
(271, "trick", 3),
(272, "role-play", 3),
(273, "wish", 3),
(274, "assist", 3),
(275, "ingrain", 3),
(276, "superpower", 3),
(277, "magic-coat", 3),
(278, "recycle", 3),
(279, "revenge", 3),
(280, "brick-break", 3),
(281, "yawn", 3),
(282, "knock-off", 3),
(283, "endeavor", 3),
(284, "eruption", 3),
(285, "skill-swap", 3),
(286, "imprison", 3),
(287, "refresh", 3),
(288, "grudge", 3),
(289, "snatch", 3),
(290, "secret-power", 3),
(291, "dive", 3),
(292, "arm-thrust", 3),
(293, "camouflage", 3),
(294, "tail-glow", 3),
(295, "luster-purge", 3),
(296, "mist-ball", 3),
(297, "feather-dance", 3),
(298, "teeter-dance", 3),
(299, "blaze-kick", 3),
(300, "mud-sport", 3),
(301, "ice-ball", 3),
(302, "needle-arm", 3),
(303, "slack-off", 3),
(304, "hyper-voice", 3),
(305, "poison-fang", 3),
(306, "crush-claw", 3),
(307, "blast-burn", 3),
(308, "hydro-cannon", 3),
(309, "meteor-mash", 3),
(310, "astonish", 3),
(311, "weather-ball", 3),
(312, "aromatherapy", 3),
(313, "fake-tears", 3),
(314, "air-cutter", 3),
(315, "overheat", 3),
(316, "odor-sleuth", 3),
(317, "rock-tomb", 3),
(318, "silver-wind", 3),
(319, "metal-sound", 3),
(320, "grass-whistle", 3),
(321, "tickle", 3),
(322, "cosmic-power", 3),
(323, "water-spout", 3),
(324, "signal-beam", 3),
(325, "shadow-punch", 3),
(326, "extrasensory", 3),
(327, "sky-uppercut", 3),
(328, "sand-tomb", 3),
(329, "sheer-cold", 3),
(330, "muddy-water", 3),
(331, "bullet-seed", 3),
(332, "aerial-ace", 3),
(333, "icicle-spear", 3),
(334, "iron-defense", 3),
(335, "block", 3),
(336, "howl", 3),
(337, "dragon-claw", 3),
(338, "frenzy-plant", 3),
(339, "bulk-up", 3),
(340, "bounce", 3),
(341, "mud-shot", 3),
(342, "poison-tail", 3),
(343, "covet", 3),
(344, "volt-tackle", 3),
(345, "magical-leaf", 3),
(346, "water-sport", 3),
(347, "calm-mind", 3),
(348, "leaf-blade", 3),
(349, "dragon-dance", 3),
(350, "rock-blast", 3),
(351, "shock-wave", 3),
(352, "water-pulse", 3),
(353, "doom-desire", 3),
(354, "psycho-boost", 3),
(355, "roost", 4),
(356, "gravity", 4),
(357, "miracle-eye", 4),
(358, "wake-up-slap", 4),
(359, "hammer-arm", 4),
(360, "gyro-ball", 4),
(361, "healing-wish", 4),
(362, "brine", 4),
(363, "natural-gift", 4),
(364, "feint", 4),
(365, "pluck", 4),
(366, "tailwind", 4),
(367, "acupressure", 4),
(368, "metal-burst", 4),
(369, "u-turn", 4),
(370, "close-combat", 4),
(371, "payback", 4),
(372, "assurance", 4),
(373, "embargo", 4),
(374, "fling", 4),
(375, "psycho-shift", 4),
(376, "trump-card", 4),
(377, "heal-block", 4),
(378, "wring-out", 4),
(379, "power-trick", 4),
(380, "gastro-acid", 4),
(381, "lucky-chant", 4),
(382, "me-first", 4),
(383, "copycat", 4),
(384, "power-swap", 4),
(385, "guard-swap", 4),
(386, "punishment", 4),
(387, "last-resort", 4),
(388, "worry-seed", 4),
(389, "sucker-punch", 4),
(390, "toxic-spikes", 4),
(391, "heart-swap", 4),
(392, "aqua-ring", 4),
(393, "magnet-rise", 4),
(394, "flare-blitz", 4),
(395, "force-palm", 4),
(396, "aura-sphere", 4),
(397, "rock-polish", 4),
(398, "poison-jab", 4),
(399, "dark-pulse", 4),
(400, "night-slash", 4),
(401, "aqua-tail", 4),
(402, "seed-bomb", 4),
(403, "air-slash", 4),
(404, "x-scissor", 4),
(405, "bug-buzz", 4),
(406, "dragon-pulse", 4),
(407, "dragon-rush", 4),
(408, "power-gem", 4),
(409, "drain-punch", 4),
(410, "vacuum-wave", 4),
(411, "focus-blast", 4),
(412, "energy-ball", 4),
(413, "brave-bird", 4),
(414, "earth-power", 4),
(415, "switcheroo", 4),
(416, "giga-impact", 4),
(417, "nasty-plot", 4),
(418, "bullet-punch", 4),
(419, "avalanche", 4),
(420, "ice-shard", 4),
(421, "shadow-claw", 4),
(422, "thunder-fang", 4),
(423, "ice-fang", 4),
(424, "fire-fang", 4),
(425, "shadow-sneak", 4),
(426, "mud-bomb", 4),
(427, "psycho-cut", 4),
(428, "zen-headbutt", 4),
(429, "mirror-shot", 4),
(430, "flash-cannon", 4),
(431, "rock-climb", 4),
(432, "defog", 4),
(433, "trick-room", 4),
(434, "draco-meteor", 4),
(435, "discharge", 4),
(436, "lava-plume", 4),
(437, "leaf-storm", 4),
(438, "power-whip", 4),
(439, "rock-wrecker", 4),
(440, "cross-poison", 4),
(441, "gunk-shot", 4),
(442, "iron-head", 4),
(443, "magnet-bomb", 4),
(444, "stone-edge", 4),
(445, "captivate", 4),
(446, "stealth-rock", 4),
(447, "grass-knot", 4),
(448, "chatter", 4),
(449, "judgment", 4),
(450, "bug-bite", 4),
(451, "charge-beam", 4),
(452, "wood-hammer", 4),
(453, "aqua-jet", 4),
(454, "attack-order", 4),
(455, "defend-order", 4),
(456, "heal-order", 4),
(457, "head-smash", 4),
(458, "double-hit", 4),
(459, "roar-of-time", 4),
(460, "spacial-rend", 4),
(461, "lunar-dance", 4),
(462, "crush-grip", 4),
(463, "magma-storm", 4),
(464, "dark-void", 4),
(465, "seed-flare", 4),
(466, "ominous-wind", 4),
(467, "shadow-force", 4),
(468, "hone-claws", 5),
(469, "wide-guard", 5),
(470, "guard-split", 5),
(471, "power-split", 5),
(472, "wonder-room", 5),
(473, "psyshock", 5),
(474, "venoshock", 5),
(475, "autotomize", 5),
(476, "rage-powder", 5),
(477, "telekinesis", 5),
(478, "magic-room", 5),
(479, "smack-down", 5),
(480, "storm-throw", 5),
(481, "flame-burst", 5),
(482, "sludge-wave", 5),
(483, "quiver-dance", 5),
(484, "heavy-slam", 5),
(485, "synchronoise", 5),
(486, "electro-ball", 5),
(487, "soak", 5),
(488, "flame-charge", 5),
(489, "coil", 5),
(490, "low-sweep", 5),
(491, "acid-spray", 5),
(492, "foul-play", 5),
(493, "simple-beam", 5),
(494, "entrainment", 5),
(495, "after-you", 5),
(496, "round", 5),
(497, "echoed-voice", 5),
(498, "chip-away", 5),
(499, "clear-smog", 5),
(500, "stored-power", 5),
(501, "quick-guard", 5),
(502, "ally-switch", 5),
(503, "scald", 5),
(504, "shell-smash", 5),
(505, "heal-pulse", 5),
(506, "hex", 5),
(507, "sky-drop", 5),
(508, "shift-gear", 5),
(509, "circle-throw", 5),
(510, "incinerate", 5),
(511, "quash", 5),
(512, "acrobatics", 5),
(513, "reflect-type", 5),
(514, "retaliate", 5),
(515, "final-gambit", 5),
(516, "bestow", 5),
(517, "inferno", 5),
(518, "water-pledge", 5),
(519, "fire-pledge", 5),
(520, "grass-pledge", 5),
(521, "volt-switch", 5),
(522, "struggle-bug", 5),
(523, "bulldoze", 5),
(524, "frost-breath", 5),
(525, "dragon-tail", 5),
(526, "work-up", 5),
(527, "electroweb", 5),
(528, "wild-charge", 5),
(529, "drill-run", 5),
(530, "dual-chop", 5),
(531, "heart-stamp", 5),
(532, "horn-leech", 5),
(533, "sacred-sword", 5),
(534, "razor-shell", 5),
(535, "heat-crash", 5),
(536, "leaf-tornado", 5),
(537, "steamroller", 5),
(538, "cotton-guard", 5),
(539, "night-daze", 5),
(540, "psystrike", 5),
(541, "tail-slap", 5),
(542, "hurricane", 5),
(543, "head-charge", 5),
(544, "gear-grind", 5),
(545, "searing-shot", 5),
(546, "techno-blast", 5),
(547, "relic-song", 5),
(548, "secret-sword", 5),
(549, "glaciate", 5),
(550, "bolt-strike", 5),
(551, "blue-flare", 5),
(552, "fiery-dance", 5),
(553, "freeze-shock", 5),
(554, "ice-burn", 5),
(555, "snarl", 5),
(556, "icicle-crash", 5),
(557, "v-create", 5),
(558, "fusion-flare", 5),
(559, "fusion-bolt", 5),
(560, "flying-press", 6),
(561, "mat-block", 6),
(562, "belch", 6),
(563, "rototiller", 6),
(564, "sticky-web", 6),
(565, "fell-stinger", 6),
(566, "phantom-force", 6),
(567, "trick-or-treat", 6),
(568, "noble-roar", 6),
(569, "ion-deluge", 6),
(570, "parabolic-charge", 6),
(571, "forest-s-curse", 6),
(572, "petal-blizzard", 6),
(573, "freeze-dry", 6),
(574, "disarming-voice", 6),
(575, "parting-shot", 6),
(576, "topsy-turvy", 6),
(577, "draining-kiss", 6),
(578, "crafty-shield", 6),
(579, "flower-shield", 6),
(580, "grassy-terrain", 6),
(581, "misty-terrain", 6),
(582, "electrify", 6),
(583, "play-rough", 6),
(584, "fairy-wind", 6),
(585, "moonblast", 6),
(586, "boomburst", 6),
(587, "fairy-lock", 6),
(588, "king-s-shield", 6),
(589, "play-nice", 6),
(590, "confide", 6),
(591, "diamond-storm", 6),
(592, "steam-eruption", 6),
(593, "hyperspace-hole", 6),
(594, "water-shuriken", 6),
(595, "mystical-fire", 6),
(596, "spiky-shield", 6),
(597, "aromatic-mist", 6),
(598, "eerie-impulse", 6),
(599, "venom-drench", 6),
(600, "powder", 6),
(601, "geomancy", 6),
(602, "magnetic-flux", 6),
(603, "happy-hour", 6),
(604, "electric-terrain", 6),
(605, "dazzling-gleam", 6),
(606, "celebrate", 6),
(607, "hold-hands", 6),
(608, "baby-doll-eyes", 6),
(609, "nuzzle", 6),
(610, "hold-back", 6),
(611, "infestation", 6),
(612, "power-up-punch", 6),
(613, "oblivion-wing", 6),
(614, "thousand-arrows", 6),
(615, "thousand-waves", 6),
(616, "land-s-wrath", 6),
(617, "light-of-ruin", 6),
(618, "origin-pulse", 6),
(619, "precipice-blades", 6),
(620, "dragon-ascent", 6),
(621, "hyperspace-fury", 7),
(622, "breakneck-blitz-physical", 7),
(623, "breakneck-blitz-special", 7),
(624, "all-out-pummeling-physical", 7),
(625, "all-out-pummeling-special", 7),
(626, "supersonic-skystrike-physical", 7),
(627, "supersonic-skystrike-special", 7),
(628, "acid-downpour-physical", 7),
(629, "acid-downpour-special", 7),
(630, "tectonic-rage-physical", 7),
(631, "tectonic-rage-special", 7),
(632, "continental-crush-physical", 7),
(633, "continental-crush-special", 7),
(634, "savage-spin-out-physical", 7),
(635, "savage-spin-out-special", 7),
(636, "never-ending-nightmare-physical", 7),
(637, "never-ending-nightmare-special", 7),
(638, "corkscrew-crash-physical", 7),
(639, "corkscrew-crash-special", 7),
(640, "inferno-overdrive-physical", 7),
(641, "inferno-overdrive-special", 7),
(642, "hydro-vortex-physical", 7),
(643, "hydro-vortex-special", 7),
(644, "bloom-doom-physical", 7),
(645, "bloom-doom-special", 7),
(646, "gigavolt-havoc-physical", 7),
(647, "gigavolt-havoc-special", 7),
(648, "shattered-psyche-physical", 7),
(649, "shattered-psyche-special", 7),
(650, "subzero-slammer-physical", 7),
(651, "subzero-slammer-special", 7),
(652, "devastating-drake-physical", 7),
(653, "devastating-drake-special", 7),
(654, "black-hole-eclipse-physical", 7),
(655, "black-hole-eclipse-special", 7),
(656, "twinkle-tackle-physical", 7),
(657, "twinkle-tackle-special", 7),
(658, "catastropika", 7),
(659, "shore-up", 7),
(660, "first-impression", 7),
(661, "baneful-bunker", 7),
(662, "spirit-shackle", 7),
(663, "darkest-lariat", 7),
(664, "sparkling-aria", 7),
(665, "ice-hammer", 7),
(666, "floral-healing", 7),
(667, "high-horsepower", 7),
(668, "strength-sap", 7),
(669, "solar-blade", 7),
(670, "leafage", 7),
(671, "spotlight", 7),
(672, "toxic-thread", 7),
(673, "laser-focus", 7),
(674, "gear-up", 7),
(675, "throat-chop", 7),
(676, "pollen-puff", 7),
(677, "anchor-shot", 7),
(678, "psychic-terrain", 7),
(679, "lunge", 7),
(680, "fire-lash", 7),
(681, "power-trip", 7),
(682, "burn-up", 7),
(683, "speed-swap", 7),
(684, "smart-strike", 7),
(685, "purify", 7),
(686, "revelation-dance", 7),
(687, "core-enforcer", 7),
(688, "trop-kick", 7),
(689, "instruct", 7),
(690, "beak-blast", 7),
(691, "clanging-scales", 7),
(692, "dragon-hammer", 7),
(693, "brutal-swing", 7),
(694, "aurora-veil", 7),
(695, "sinister-arrow-raid", 7),
(696, "malicious-moonsault", 7),
(697, "oceanic-operetta", 7),
(698, "guardian-of-alola", 7),
(699, "soul-stealing-7-star-strike", 7),
(700, "stoked-sparksurfer", 7),
(701, "pulverizing-pancake", 7),
(702, "extreme-evoboost", 7),
(703, "genesis-supernova", 7),
(704, "shell-trap", 7),
(705, "fleur-cannon", 7),
(706, "psychic-fangs", 7),
(707, "stomping-tantrum", 7),
(708, "shadow-bone", 7),
(709, "accelerock", 7),
(710, "liquidation", 7),
(711, "prismatic-laser", 7),
(712, "spectral-thief", 7),
(713, "sunsteel-strike", 7),
(714, "moongeist-beam", 7),
(715, "tearful-look", 7),
(716, "zing-zap", 7),
(717, "nature-s-madness", 7),
(718, "multi-attack", 7),
(719, "10-000-000-volt-thunderbolt", 7),
(10001, "hidden-power-fighting", 2),
(10002, "hidden-power-flying", 2),
(10003, "hidden-power-poison", 2),
(10004, "hidden-power-ground", 2),
(10005, "hidden-power-rock", 2),
(10006, "hidden-power-bug", 2),
(10007, "hidden-power-ghost", 2),
(10008, "hidden-power-steel", 2),
(10009, "hidden-power-fire", 2),
(10010, "hidden-power-water", 2),
(10011, "hidden-power-grass", 2),
(10012, "hidden-power-electric", 2),
(10013, "hidden-power-psychic", 2),
(10014, "hidden-power-ice", 2),
(10015, "hidden-power-dragon", 2),
(10016, "hidden-power-dark", 2)
;
