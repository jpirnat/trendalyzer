create table if not exists `natures`
(
`id` tinyint unsigned not null,

`identifier` varchar(7) not null,

primary key (`id`),
unique key (`identifier`)
) engine = InnoDB;


create table if not exists `nature_stat_modifiers`
(
`nature_id` tinyint unsigned not null,
`stat_id` tinyint unsigned not null,

`modifier` decimal(2, 1) unsigned not null,

primary key (
	`nature_id`,
	`stat_id`
),
foreign key (`nature_id`) references `natures` (`id`)
	on delete restrict
	on update cascade,
foreign key (`stat_id`) references `stats` (`id`)
	on delete restrict
	on update cascade
) engine = InnoDB;


insert into `natures` (
	`id`,
	`identifier`
) values
(1, "hardy"),
(2, "lonely"),
(3, "brave"),
(4, "adamant"),
(5, "naughty"),
(6, "bold"),
(7, "docile"),
(8, "relaxed"),
(9, "impish"),
(10, "lax"),
(11, "timid"),
(12, "hasty"),
(13, "serious"),
(14, "jolly"),
(15, "naive"),
(16, "modest"),
(17, "mild"),
(18, "quiet"),
(19, "bashful"),
(20, "rash"),
(21, "calm"),
(22, "gentle"),
(23, "sassy"),
(24, "careful"),
(25, "quirky")
;


insert into `nature_stat_modifiers` (
	`nature_id`,
	`stat_id`,
	`modifier`
) values
(1, 2, 1.0),
(1, 3, 1.0),
(1, 4, 1.0),
(1, 8, 1.0),
(1, 9, 1.0),
(2, 2, 1.1),
(2, 3, 0.9),
(2, 4, 1.0),
(2, 8, 1.0),
(2, 9, 1.0),
(3, 2, 1.1),
(3, 3, 1.0),
(3, 4, 0.9),
(3, 8, 1.0),
(3, 9, 1.0),
(4, 2, 1.1),
(4, 3, 1.0),
(4, 4, 1.0),
(4, 8, 0.9),
(4, 9, 1.0),
(5, 2, 1.1),
(5, 3, 1.0),
(5, 4, 1.0),
(5, 8, 1.0),
(5, 9, 0.9),
(6, 2, 0.9),
(6, 3, 1.1),
(6, 4, 1.0),
(6, 8, 1.0),
(6, 9, 1.0),
(7, 2, 1.0),
(7, 3, 1.0),
(7, 4, 1.0),
(7, 8, 1.0),
(7, 9, 1.0),
(8, 2, 1.0),
(8, 3, 1.1),
(8, 4, 0.9),
(8, 8, 1.0),
(8, 9, 1.0),
(9, 2, 1.0),
(9, 3, 1.1),
(9, 4, 1.0),
(9, 8, 0.9),
(9, 9, 1.0),
(10, 2, 1.0),
(10, 3, 1.1),
(10, 4, 1.0),
(10, 8, 1.0),
(10, 9, 0.9),
(11, 2, 0.9),
(11, 3, 1.0),
(11, 4, 1.1),
(11, 8, 1.0),
(11, 9, 1.0),
(12, 2, 1.0),
(12, 3, 0.9),
(12, 4, 1.1),
(12, 8, 1.0),
(12, 9, 1.0),
(13, 2, 1.0),
(13, 3, 1.0),
(13, 4, 1.0),
(13, 8, 1.0),
(13, 9, 1.0),
(14, 2, 1.0),
(14, 3, 1.0),
(14, 4, 1.1),
(14, 8, 0.9),
(14, 9, 1.0),
(15, 2, 1.0),
(15, 3, 1.0),
(15, 4, 1.1),
(15, 8, 1.0),
(15, 9, 0.9),
(16, 2, 0.9),
(16, 3, 1.0),
(16, 4, 1.0),
(16, 8, 1.1),
(16, 9, 1.0),
(17, 2, 1.0),
(17, 3, 0.9),
(17, 4, 1.0),
(17, 8, 1.1),
(17, 9, 1.0),
(18, 2, 1.0),
(18, 3, 1.0),
(18, 4, 0.9),
(18, 8, 1.1),
(18, 9, 1.0),
(19, 2, 1.0),
(19, 3, 1.0),
(19, 4, 1.0),
(19, 8, 1.0),
(19, 9, 1.0),
(20, 2, 1.0),
(20, 3, 1.0),
(20, 4, 1.0),
(20, 8, 1.1),
(20, 9, 0.9),
(21, 2, 0.9),
(21, 3, 1.0),
(21, 4, 1.0),
(21, 8, 1.0),
(21, 9, 1.1),
(22, 2, 1.0),
(22, 3, 0.9),
(22, 4, 1.0),
(22, 8, 1.0),
(22, 9, 1.1),
(23, 2, 1.0),
(23, 3, 1.0),
(23, 4, 0.9),
(23, 8, 1.0),
(23, 9, 1.1),
(24, 2, 1.0),
(24, 3, 1.0),
(24, 4, 1.0),
(24, 8, 0.9),
(24, 9, 1.1),
(25, 2, 1.0),
(25, 3, 1.0),
(25, 4, 1.0),
(25, 8, 1.0),
(25, 9, 1.0)
;