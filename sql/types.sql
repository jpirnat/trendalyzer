create table if not exists `types`
(
`id` tinyint unsigned not null,

`identifier` varchar(8) not null,
`category_id` tinyint unsigned null, # nullable
`hidden_power_index` tinyint unsigned null, # nullable

primary key (`id`),
unique key (`identifier`),
foreign key (`category_id`) references `categories` (`id`)
	on delete restrict
	on update cascade,
unique key (`hidden_power_index`)
) engine = InnoDB;


insert into `types` (
	`id`,
	`identifier`,
	`category_id`,
	`hidden_power_index`
) values
(1, "normal", 1, null),
(2, "fighting", 1, 0),
(3, "flying", 1, 1),
(4, "poison", 1, 2),
(5, "ground", 1, 3),
(6, "rock", 1, 4),
(7, "bug", 1, 5),
(8, "ghost", 1, 6),
(9, "steel", 1, 7),
(10, "fire", 2, 8),
(11, "water", 2, 9),
(12, "grass", 2, 10),
(13, "electric", 2, 11),
(14, "psychic", 2, 12),
(15, "ice", 2, 13),
(16, "dragon", 2, 14),
(17, "dark", 2, 15),
(18, "fairy", null, null),
(101, "unknown", null, null),
(102, "shadow", null, null)
;


create table if not exists `type_charts`
(
`generation` tinyint unsigned not null,
`attacking_type_id` tinyint unsigned not null,
`defending_type_id` tinyint unsigned not null,

`factor` decimal(2, 1) unsigned not null,

primary key (
	`generation`,
	`attacking_type_id`,
	`defending_type_id`
),
foreign key (`generation`) references `generations` (`generation`)
	on delete restrict
	on update cascade,
foreign key (`attacking_type_id`) references `types` (`id`)
	on delete restrict
	on update cascade,
foreign key (`defending_type_id`) references `types` (`id`)
	on delete restrict
	on update cascade
) engine = InnoDB;


insert into `type_charts` (
	`generation`,
	`attacking_type_id`,
	`defending_type_id`,
	`factor`
) values
(1, 1, 1, 1),
(1, 1, 2, 1),
(1, 1, 3, 1),
(1, 1, 4, 1),
(1, 1, 5, 1),
(1, 1, 6, 0.5),
(1, 1, 7, 1),
(1, 1, 8, 0),
(1, 1, 10, 1),
(1, 1, 11, 1),
(1, 1, 12, 1),
(1, 1, 13, 1),
(1, 1, 14, 1),
(1, 1, 15, 1),
(1, 1, 16, 1),
(1, 2, 1, 2),
(1, 2, 2, 1),
(1, 2, 3, 0.5),
(1, 2, 4, 0.5),
(1, 2, 5, 1),
(1, 2, 6, 2),
(1, 2, 7, 0.5),
(1, 2, 8, 0),
(1, 2, 10, 1),
(1, 2, 11, 1),
(1, 2, 12, 1),
(1, 2, 13, 1),
(1, 2, 14, 0.5),
(1, 2, 15, 2),
(1, 2, 16, 1),
(1, 3, 1, 1),
(1, 3, 2, 2),
(1, 3, 3, 1),
(1, 3, 4, 1),
(1, 3, 5, 1),
(1, 3, 6, 0.5),
(1, 3, 7, 2),
(1, 3, 8, 1),
(1, 3, 10, 1),
(1, 3, 11, 1),
(1, 3, 12, 2),
(1, 3, 13, 0.5),
(1, 3, 14, 1),
(1, 3, 15, 1),
(1, 3, 16, 1),
(1, 4, 1, 1),
(1, 4, 2, 1),
(1, 4, 3, 1),
(1, 4, 4, 0.5),
(1, 4, 5, 0.5),
(1, 4, 6, 0.5),
(1, 4, 7, 2),
(1, 4, 8, 0.5),
(1, 4, 10, 1),
(1, 4, 11, 1),
(1, 4, 12, 2),
(1, 4, 13, 1),
(1, 4, 14, 1),
(1, 4, 15, 1),
(1, 4, 16, 1),
(1, 5, 1, 1),
(1, 5, 2, 1),
(1, 5, 3, 0),
(1, 5, 4, 2),
(1, 5, 5, 1),
(1, 5, 6, 2),
(1, 5, 7, 0.5),
(1, 5, 8, 1),
(1, 5, 10, 2),
(1, 5, 11, 1),
(1, 5, 12, 0.5),
(1, 5, 13, 2),
(1, 5, 14, 1),
(1, 5, 15, 1),
(1, 5, 16, 1),
(1, 6, 1, 1),
(1, 6, 2, 0.5),
(1, 6, 3, 2),
(1, 6, 4, 1),
(1, 6, 5, 0.5),
(1, 6, 6, 1),
(1, 6, 7, 2),
(1, 6, 8, 1),
(1, 6, 10, 2),
(1, 6, 11, 1),
(1, 6, 12, 1),
(1, 6, 13, 1),
(1, 6, 14, 1),
(1, 6, 15, 2),
(1, 6, 16, 1),
(1, 7, 1, 1),
(1, 7, 2, 0.5),
(1, 7, 3, 0.5),
(1, 7, 4, 2),
(1, 7, 5, 1),
(1, 7, 6, 1),
(1, 7, 7, 1),
(1, 7, 8, 0.5),
(1, 7, 10, 0.5),
(1, 7, 11, 1),
(1, 7, 12, 2),
(1, 7, 13, 1),
(1, 7, 14, 2),
(1, 7, 15, 1),
(1, 7, 16, 1),
(1, 8, 1, 0),
(1, 8, 2, 1),
(1, 8, 3, 1),
(1, 8, 4, 1),
(1, 8, 5, 1),
(1, 8, 6, 1),
(1, 8, 7, 1),
(1, 8, 8, 2),
(1, 8, 10, 1),
(1, 8, 11, 1),
(1, 8, 12, 1),
(1, 8, 13, 1),
(1, 8, 14, 0),
(1, 8, 15, 1),
(1, 8, 16, 1),
(1, 10, 1, 1),
(1, 10, 2, 1),
(1, 10, 3, 1),
(1, 10, 4, 1),
(1, 10, 5, 1),
(1, 10, 6, 0.5),
(1, 10, 7, 2),
(1, 10, 8, 1),
(1, 10, 10, 0.5),
(1, 10, 11, 0.5),
(1, 10, 12, 2),
(1, 10, 13, 1),
(1, 10, 14, 1),
(1, 10, 15, 2),
(1, 10, 16, 0.5),
(1, 11, 1, 1),
(1, 11, 2, 1),
(1, 11, 3, 1),
(1, 11, 4, 1),
(1, 11, 5, 2),
(1, 11, 6, 2),
(1, 11, 7, 1),
(1, 11, 8, 1),
(1, 11, 10, 2),
(1, 11, 11, 0.5),
(1, 11, 12, 0.5),
(1, 11, 13, 1),
(1, 11, 14, 1),
(1, 11, 15, 1),
(1, 11, 16, 0.5),
(1, 12, 1, 1),
(1, 12, 2, 1),
(1, 12, 3, 0.5),
(1, 12, 4, 0.5),
(1, 12, 5, 2),
(1, 12, 6, 2),
(1, 12, 7, 0.5),
(1, 12, 8, 1),
(1, 12, 10, 0.5),
(1, 12, 11, 2),
(1, 12, 12, 0.5),
(1, 12, 13, 1),
(1, 12, 14, 1),
(1, 12, 15, 1),
(1, 12, 16, 0.5),
(1, 13, 1, 1),
(1, 13, 2, 1),
(1, 13, 3, 2),
(1, 13, 4, 1),
(1, 13, 5, 0),
(1, 13, 6, 1),
(1, 13, 7, 1),
(1, 13, 8, 1),
(1, 13, 10, 1),
(1, 13, 11, 2),
(1, 13, 12, 0.5),
(1, 13, 13, 0.5),
(1, 13, 14, 1),
(1, 13, 15, 1),
(1, 13, 16, 0.5),
(1, 14, 1, 1),
(1, 14, 2, 2),
(1, 14, 3, 1),
(1, 14, 4, 2),
(1, 14, 5, 1),
(1, 14, 6, 1),
(1, 14, 7, 1),
(1, 14, 8, 1),
(1, 14, 10, 1),
(1, 14, 11, 1),
(1, 14, 12, 1),
(1, 14, 13, 1),
(1, 14, 14, 0.5),
(1, 14, 15, 1),
(1, 14, 16, 1),
(1, 15, 1, 1),
(1, 15, 2, 1),
(1, 15, 3, 2),
(1, 15, 4, 1),
(1, 15, 5, 2),
(1, 15, 6, 1),
(1, 15, 7, 1),
(1, 15, 8, 1),
(1, 15, 10, 1),
(1, 15, 11, 0.5),
(1, 15, 12, 2),
(1, 15, 13, 1),
(1, 15, 14, 1),
(1, 15, 15, 0.5),
(1, 15, 16, 2),
(1, 16, 1, 1),
(1, 16, 2, 1),
(1, 16, 3, 1),
(1, 16, 4, 1),
(1, 16, 5, 1),
(1, 16, 6, 1),
(1, 16, 7, 1),
(1, 16, 8, 1),
(1, 16, 10, 1),
(1, 16, 11, 1),
(1, 16, 12, 1),
(1, 16, 13, 1),
(1, 16, 14, 1),
(1, 16, 15, 1),
(1, 16, 16, 2),
(2, 1, 1, 1),
(2, 1, 2, 1),
(2, 1, 3, 1),
(2, 1, 4, 1),
(2, 1, 5, 1),
(2, 1, 6, 0.5),
(2, 1, 7, 1),
(2, 1, 8, 0),
(2, 1, 9, 0.5),
(2, 1, 10, 1),
(2, 1, 11, 1),
(2, 1, 12, 1),
(2, 1, 13, 1),
(2, 1, 14, 1),
(2, 1, 15, 1),
(2, 1, 16, 1),
(2, 1, 17, 1),
(2, 2, 1, 2),
(2, 2, 2, 1),
(2, 2, 3, 0.5),
(2, 2, 4, 0.5),
(2, 2, 5, 1),
(2, 2, 6, 2),
(2, 2, 7, 0.5),
(2, 2, 8, 0),
(2, 2, 9, 2),
(2, 2, 10, 1),
(2, 2, 11, 1),
(2, 2, 12, 1),
(2, 2, 13, 1),
(2, 2, 14, 0.5),
(2, 2, 15, 2),
(2, 2, 16, 1),
(2, 2, 17, 2),
(2, 3, 1, 1),
(2, 3, 2, 2),
(2, 3, 3, 1),
(2, 3, 4, 1),
(2, 3, 5, 1),
(2, 3, 6, 0.5),
(2, 3, 7, 2),
(2, 3, 8, 1),
(2, 3, 9, 0.5),
(2, 3, 10, 1),
(2, 3, 11, 1),
(2, 3, 12, 2),
(2, 3, 13, 0.5),
(2, 3, 14, 1),
(2, 3, 15, 1),
(2, 3, 16, 1),
(2, 3, 17, 1),
(2, 4, 1, 1),
(2, 4, 2, 1),
(2, 4, 3, 1),
(2, 4, 4, 0.5),
(2, 4, 5, 0.5),
(2, 4, 6, 0.5),
(2, 4, 7, 1),
(2, 4, 8, 0.5),
(2, 4, 9, 0),
(2, 4, 10, 1),
(2, 4, 11, 1),
(2, 4, 12, 2),
(2, 4, 13, 1),
(2, 4, 14, 1),
(2, 4, 15, 1),
(2, 4, 16, 1),
(2, 4, 17, 1),
(2, 5, 1, 1),
(2, 5, 2, 1),
(2, 5, 3, 0),
(2, 5, 4, 2),
(2, 5, 5, 1),
(2, 5, 6, 2),
(2, 5, 7, 0.5),
(2, 5, 8, 1),
(2, 5, 9, 2),
(2, 5, 10, 2),
(2, 5, 11, 1),
(2, 5, 12, 0.5),
(2, 5, 13, 2),
(2, 5, 14, 1),
(2, 5, 15, 1),
(2, 5, 16, 1),
(2, 5, 17, 1),
(2, 6, 1, 1),
(2, 6, 2, 0.5),
(2, 6, 3, 2),
(2, 6, 4, 1),
(2, 6, 5, 0.5),
(2, 6, 6, 1),
(2, 6, 7, 2),
(2, 6, 8, 1),
(2, 6, 9, 0.5),
(2, 6, 10, 2),
(2, 6, 11, 1),
(2, 6, 12, 1),
(2, 6, 13, 1),
(2, 6, 14, 1),
(2, 6, 15, 2),
(2, 6, 16, 1),
(2, 6, 17, 1),
(2, 7, 1, 1),
(2, 7, 2, 0.5),
(2, 7, 3, 0.5),
(2, 7, 4, 0.5),
(2, 7, 5, 1),
(2, 7, 6, 1),
(2, 7, 7, 1),
(2, 7, 8, 0.5),
(2, 7, 9, 0.5),
(2, 7, 10, 0.5),
(2, 7, 11, 1),
(2, 7, 12, 2),
(2, 7, 13, 1),
(2, 7, 14, 2),
(2, 7, 15, 1),
(2, 7, 16, 1),
(2, 7, 17, 2),
(2, 8, 1, 0),
(2, 8, 2, 1),
(2, 8, 3, 1),
(2, 8, 4, 1),
(2, 8, 5, 1),
(2, 8, 6, 1),
(2, 8, 7, 1),
(2, 8, 8, 2),
(2, 8, 9, 0.5),
(2, 8, 10, 1),
(2, 8, 11, 1),
(2, 8, 12, 1),
(2, 8, 13, 1),
(2, 8, 14, 2),
(2, 8, 15, 1),
(2, 8, 16, 1),
(2, 8, 17, 0.5),
(2, 9, 1, 1),
(2, 9, 2, 1),
(2, 9, 3, 1),
(2, 9, 4, 1),
(2, 9, 5, 1),
(2, 9, 6, 2),
(2, 9, 7, 1),
(2, 9, 8, 1),
(2, 9, 9, 0.5),
(2, 9, 10, 0.5),
(2, 9, 11, 0.5),
(2, 9, 12, 1),
(2, 9, 13, 0.5),
(2, 9, 14, 1),
(2, 9, 15, 2),
(2, 9, 16, 1),
(2, 9, 17, 1),
(2, 10, 1, 1),
(2, 10, 2, 1),
(2, 10, 3, 1),
(2, 10, 4, 1),
(2, 10, 5, 1),
(2, 10, 6, 0.5),
(2, 10, 7, 2),
(2, 10, 8, 1),
(2, 10, 9, 2),
(2, 10, 10, 0.5),
(2, 10, 11, 0.5),
(2, 10, 12, 2),
(2, 10, 13, 1),
(2, 10, 14, 1),
(2, 10, 15, 2),
(2, 10, 16, 0.5),
(2, 10, 17, 1),
(2, 11, 1, 1),
(2, 11, 2, 1),
(2, 11, 3, 1),
(2, 11, 4, 1),
(2, 11, 5, 2),
(2, 11, 6, 2),
(2, 11, 7, 1),
(2, 11, 8, 1),
(2, 11, 9, 1),
(2, 11, 10, 2),
(2, 11, 11, 0.5),
(2, 11, 12, 0.5),
(2, 11, 13, 1),
(2, 11, 14, 1),
(2, 11, 15, 1),
(2, 11, 16, 0.5),
(2, 11, 17, 1),
(2, 12, 1, 1),
(2, 12, 2, 1),
(2, 12, 3, 0.5),
(2, 12, 4, 0.5),
(2, 12, 5, 2),
(2, 12, 6, 2),
(2, 12, 7, 0.5),
(2, 12, 8, 1),
(2, 12, 9, 0.5),
(2, 12, 10, 0.5),
(2, 12, 11, 2),
(2, 12, 12, 0.5),
(2, 12, 13, 1),
(2, 12, 14, 1),
(2, 12, 15, 1),
(2, 12, 16, 0.5),
(2, 12, 17, 1),
(2, 13, 1, 1),
(2, 13, 2, 1),
(2, 13, 3, 2),
(2, 13, 4, 1),
(2, 13, 5, 0),
(2, 13, 6, 1),
(2, 13, 7, 1),
(2, 13, 8, 1),
(2, 13, 9, 1),
(2, 13, 10, 1),
(2, 13, 11, 2),
(2, 13, 12, 0.5),
(2, 13, 13, 0.5),
(2, 13, 14, 1),
(2, 13, 15, 1),
(2, 13, 16, 0.5),
(2, 13, 17, 1),
(2, 14, 1, 1),
(2, 14, 2, 2),
(2, 14, 3, 1),
(2, 14, 4, 2),
(2, 14, 5, 1),
(2, 14, 6, 1),
(2, 14, 7, 1),
(2, 14, 8, 1),
(2, 14, 9, 0.5),
(2, 14, 10, 1),
(2, 14, 11, 1),
(2, 14, 12, 1),
(2, 14, 13, 1),
(2, 14, 14, 0.5),
(2, 14, 15, 1),
(2, 14, 16, 1),
(2, 14, 17, 0),
(2, 15, 1, 1),
(2, 15, 2, 1),
(2, 15, 3, 2),
(2, 15, 4, 1),
(2, 15, 5, 2),
(2, 15, 6, 1),
(2, 15, 7, 1),
(2, 15, 8, 1),
(2, 15, 9, 0.5),
(2, 15, 10, 0.5),
(2, 15, 11, 0.5),
(2, 15, 12, 2),
(2, 15, 13, 1),
(2, 15, 14, 1),
(2, 15, 15, 0.5),
(2, 15, 16, 2),
(2, 15, 17, 1),
(2, 16, 1, 1),
(2, 16, 2, 1),
(2, 16, 3, 1),
(2, 16, 4, 1),
(2, 16, 5, 1),
(2, 16, 6, 1),
(2, 16, 7, 1),
(2, 16, 8, 1),
(2, 16, 9, 0.5),
(2, 16, 10, 1),
(2, 16, 11, 1),
(2, 16, 12, 1),
(2, 16, 13, 1),
(2, 16, 14, 1),
(2, 16, 15, 1),
(2, 16, 16, 2),
(2, 16, 17, 1),
(2, 17, 1, 1),
(2, 17, 2, 0.5),
(2, 17, 3, 1),
(2, 17, 4, 1),
(2, 17, 5, 1),
(2, 17, 6, 1),
(2, 17, 7, 1),
(2, 17, 8, 2),
(2, 17, 9, 0.5),
(2, 17, 10, 1),
(2, 17, 11, 1),
(2, 17, 12, 1),
(2, 17, 13, 1),
(2, 17, 14, 2),
(2, 17, 15, 1),
(2, 17, 16, 1),
(2, 17, 17, 0.5),
(3, 1, 1, 1),
(3, 1, 2, 1),
(3, 1, 3, 1),
(3, 1, 4, 1),
(3, 1, 5, 1),
(3, 1, 6, 0.5),
(3, 1, 7, 1),
(3, 1, 8, 0),
(3, 1, 9, 0.5),
(3, 1, 10, 1),
(3, 1, 11, 1),
(3, 1, 12, 1),
(3, 1, 13, 1),
(3, 1, 14, 1),
(3, 1, 15, 1),
(3, 1, 16, 1),
(3, 1, 17, 1),
(3, 2, 1, 2),
(3, 2, 2, 1),
(3, 2, 3, 0.5),
(3, 2, 4, 0.5),
(3, 2, 5, 1),
(3, 2, 6, 2),
(3, 2, 7, 0.5),
(3, 2, 8, 0),
(3, 2, 9, 2),
(3, 2, 10, 1),
(3, 2, 11, 1),
(3, 2, 12, 1),
(3, 2, 13, 1),
(3, 2, 14, 0.5),
(3, 2, 15, 2),
(3, 2, 16, 1),
(3, 2, 17, 2),
(3, 3, 1, 1),
(3, 3, 2, 2),
(3, 3, 3, 1),
(3, 3, 4, 1),
(3, 3, 5, 1),
(3, 3, 6, 0.5),
(3, 3, 7, 2),
(3, 3, 8, 1),
(3, 3, 9, 0.5),
(3, 3, 10, 1),
(3, 3, 11, 1),
(3, 3, 12, 2),
(3, 3, 13, 0.5),
(3, 3, 14, 1),
(3, 3, 15, 1),
(3, 3, 16, 1),
(3, 3, 17, 1),
(3, 4, 1, 1),
(3, 4, 2, 1),
(3, 4, 3, 1),
(3, 4, 4, 0.5),
(3, 4, 5, 0.5),
(3, 4, 6, 0.5),
(3, 4, 7, 1),
(3, 4, 8, 0.5),
(3, 4, 9, 0),
(3, 4, 10, 1),
(3, 4, 11, 1),
(3, 4, 12, 2),
(3, 4, 13, 1),
(3, 4, 14, 1),
(3, 4, 15, 1),
(3, 4, 16, 1),
(3, 4, 17, 1),
(3, 5, 1, 1),
(3, 5, 2, 1),
(3, 5, 3, 0),
(3, 5, 4, 2),
(3, 5, 5, 1),
(3, 5, 6, 2),
(3, 5, 7, 0.5),
(3, 5, 8, 1),
(3, 5, 9, 2),
(3, 5, 10, 2),
(3, 5, 11, 1),
(3, 5, 12, 0.5),
(3, 5, 13, 2),
(3, 5, 14, 1),
(3, 5, 15, 1),
(3, 5, 16, 1),
(3, 5, 17, 1),
(3, 6, 1, 1),
(3, 6, 2, 0.5),
(3, 6, 3, 2),
(3, 6, 4, 1),
(3, 6, 5, 0.5),
(3, 6, 6, 1),
(3, 6, 7, 2),
(3, 6, 8, 1),
(3, 6, 9, 0.5),
(3, 6, 10, 2),
(3, 6, 11, 1),
(3, 6, 12, 1),
(3, 6, 13, 1),
(3, 6, 14, 1),
(3, 6, 15, 2),
(3, 6, 16, 1),
(3, 6, 17, 1),
(3, 7, 1, 1),
(3, 7, 2, 0.5),
(3, 7, 3, 0.5),
(3, 7, 4, 0.5),
(3, 7, 5, 1),
(3, 7, 6, 1),
(3, 7, 7, 1),
(3, 7, 8, 0.5),
(3, 7, 9, 0.5),
(3, 7, 10, 0.5),
(3, 7, 11, 1),
(3, 7, 12, 2),
(3, 7, 13, 1),
(3, 7, 14, 2),
(3, 7, 15, 1),
(3, 7, 16, 1),
(3, 7, 17, 2),
(3, 8, 1, 0),
(3, 8, 2, 1),
(3, 8, 3, 1),
(3, 8, 4, 1),
(3, 8, 5, 1),
(3, 8, 6, 1),
(3, 8, 7, 1),
(3, 8, 8, 2),
(3, 8, 9, 0.5),
(3, 8, 10, 1),
(3, 8, 11, 1),
(3, 8, 12, 1),
(3, 8, 13, 1),
(3, 8, 14, 2),
(3, 8, 15, 1),
(3, 8, 16, 1),
(3, 8, 17, 0.5),
(3, 9, 1, 1),
(3, 9, 2, 1),
(3, 9, 3, 1),
(3, 9, 4, 1),
(3, 9, 5, 1),
(3, 9, 6, 2),
(3, 9, 7, 1),
(3, 9, 8, 1),
(3, 9, 9, 0.5),
(3, 9, 10, 0.5),
(3, 9, 11, 0.5),
(3, 9, 12, 1),
(3, 9, 13, 0.5),
(3, 9, 14, 1),
(3, 9, 15, 2),
(3, 9, 16, 1),
(3, 9, 17, 1),
(3, 10, 1, 1),
(3, 10, 2, 1),
(3, 10, 3, 1),
(3, 10, 4, 1),
(3, 10, 5, 1),
(3, 10, 6, 0.5),
(3, 10, 7, 2),
(3, 10, 8, 1),
(3, 10, 9, 2),
(3, 10, 10, 0.5),
(3, 10, 11, 0.5),
(3, 10, 12, 2),
(3, 10, 13, 1),
(3, 10, 14, 1),
(3, 10, 15, 2),
(3, 10, 16, 0.5),
(3, 10, 17, 1),
(3, 11, 1, 1),
(3, 11, 2, 1),
(3, 11, 3, 1),
(3, 11, 4, 1),
(3, 11, 5, 2),
(3, 11, 6, 2),
(3, 11, 7, 1),
(3, 11, 8, 1),
(3, 11, 9, 1),
(3, 11, 10, 2),
(3, 11, 11, 0.5),
(3, 11, 12, 0.5),
(3, 11, 13, 1),
(3, 11, 14, 1),
(3, 11, 15, 1),
(3, 11, 16, 0.5),
(3, 11, 17, 1),
(3, 12, 1, 1),
(3, 12, 2, 1),
(3, 12, 3, 0.5),
(3, 12, 4, 0.5),
(3, 12, 5, 2),
(3, 12, 6, 2),
(3, 12, 7, 0.5),
(3, 12, 8, 1),
(3, 12, 9, 0.5),
(3, 12, 10, 0.5),
(3, 12, 11, 2),
(3, 12, 12, 0.5),
(3, 12, 13, 1),
(3, 12, 14, 1),
(3, 12, 15, 1),
(3, 12, 16, 0.5),
(3, 12, 17, 1),
(3, 13, 1, 1),
(3, 13, 2, 1),
(3, 13, 3, 2),
(3, 13, 4, 1),
(3, 13, 5, 0),
(3, 13, 6, 1),
(3, 13, 7, 1),
(3, 13, 8, 1),
(3, 13, 9, 1),
(3, 13, 10, 1),
(3, 13, 11, 2),
(3, 13, 12, 0.5),
(3, 13, 13, 0.5),
(3, 13, 14, 1),
(3, 13, 15, 1),
(3, 13, 16, 0.5),
(3, 13, 17, 1),
(3, 14, 1, 1),
(3, 14, 2, 2),
(3, 14, 3, 1),
(3, 14, 4, 2),
(3, 14, 5, 1),
(3, 14, 6, 1),
(3, 14, 7, 1),
(3, 14, 8, 1),
(3, 14, 9, 0.5),
(3, 14, 10, 1),
(3, 14, 11, 1),
(3, 14, 12, 1),
(3, 14, 13, 1),
(3, 14, 14, 0.5),
(3, 14, 15, 1),
(3, 14, 16, 1),
(3, 14, 17, 0),
(3, 15, 1, 1),
(3, 15, 2, 1),
(3, 15, 3, 2),
(3, 15, 4, 1),
(3, 15, 5, 2),
(3, 15, 6, 1),
(3, 15, 7, 1),
(3, 15, 8, 1),
(3, 15, 9, 0.5),
(3, 15, 10, 0.5),
(3, 15, 11, 0.5),
(3, 15, 12, 2),
(3, 15, 13, 1),
(3, 15, 14, 1),
(3, 15, 15, 0.5),
(3, 15, 16, 2),
(3, 15, 17, 1),
(3, 16, 1, 1),
(3, 16, 2, 1),
(3, 16, 3, 1),
(3, 16, 4, 1),
(3, 16, 5, 1),
(3, 16, 6, 1),
(3, 16, 7, 1),
(3, 16, 8, 1),
(3, 16, 9, 0.5),
(3, 16, 10, 1),
(3, 16, 11, 1),
(3, 16, 12, 1),
(3, 16, 13, 1),
(3, 16, 14, 1),
(3, 16, 15, 1),
(3, 16, 16, 2),
(3, 16, 17, 1),
(3, 17, 1, 1),
(3, 17, 2, 0.5),
(3, 17, 3, 1),
(3, 17, 4, 1),
(3, 17, 5, 1),
(3, 17, 6, 1),
(3, 17, 7, 1),
(3, 17, 8, 2),
(3, 17, 9, 0.5),
(3, 17, 10, 1),
(3, 17, 11, 1),
(3, 17, 12, 1),
(3, 17, 13, 1),
(3, 17, 14, 2),
(3, 17, 15, 1),
(3, 17, 16, 1),
(3, 17, 17, 0.5),
(4, 1, 1, 1),
(4, 1, 2, 1),
(4, 1, 3, 1),
(4, 1, 4, 1),
(4, 1, 5, 1),
(4, 1, 6, 0.5),
(4, 1, 7, 1),
(4, 1, 8, 0),
(4, 1, 9, 0.5),
(4, 1, 10, 1),
(4, 1, 11, 1),
(4, 1, 12, 1),
(4, 1, 13, 1),
(4, 1, 14, 1),
(4, 1, 15, 1),
(4, 1, 16, 1),
(4, 1, 17, 1),
(4, 2, 1, 2),
(4, 2, 2, 1),
(4, 2, 3, 0.5),
(4, 2, 4, 0.5),
(4, 2, 5, 1),
(4, 2, 6, 2),
(4, 2, 7, 0.5),
(4, 2, 8, 0),
(4, 2, 9, 2),
(4, 2, 10, 1),
(4, 2, 11, 1),
(4, 2, 12, 1),
(4, 2, 13, 1),
(4, 2, 14, 0.5),
(4, 2, 15, 2),
(4, 2, 16, 1),
(4, 2, 17, 2),
(4, 3, 1, 1),
(4, 3, 2, 2),
(4, 3, 3, 1),
(4, 3, 4, 1),
(4, 3, 5, 1),
(4, 3, 6, 0.5),
(4, 3, 7, 2),
(4, 3, 8, 1),
(4, 3, 9, 0.5),
(4, 3, 10, 1),
(4, 3, 11, 1),
(4, 3, 12, 2),
(4, 3, 13, 0.5),
(4, 3, 14, 1),
(4, 3, 15, 1),
(4, 3, 16, 1),
(4, 3, 17, 1),
(4, 4, 1, 1),
(4, 4, 2, 1),
(4, 4, 3, 1),
(4, 4, 4, 0.5),
(4, 4, 5, 0.5),
(4, 4, 6, 0.5),
(4, 4, 7, 1),
(4, 4, 8, 0.5),
(4, 4, 9, 0),
(4, 4, 10, 1),
(4, 4, 11, 1),
(4, 4, 12, 2),
(4, 4, 13, 1),
(4, 4, 14, 1),
(4, 4, 15, 1),
(4, 4, 16, 1),
(4, 4, 17, 1),
(4, 5, 1, 1),
(4, 5, 2, 1),
(4, 5, 3, 0),
(4, 5, 4, 2),
(4, 5, 5, 1),
(4, 5, 6, 2),
(4, 5, 7, 0.5),
(4, 5, 8, 1),
(4, 5, 9, 2),
(4, 5, 10, 2),
(4, 5, 11, 1),
(4, 5, 12, 0.5),
(4, 5, 13, 2),
(4, 5, 14, 1),
(4, 5, 15, 1),
(4, 5, 16, 1),
(4, 5, 17, 1),
(4, 6, 1, 1),
(4, 6, 2, 0.5),
(4, 6, 3, 2),
(4, 6, 4, 1),
(4, 6, 5, 0.5),
(4, 6, 6, 1),
(4, 6, 7, 2),
(4, 6, 8, 1),
(4, 6, 9, 0.5),
(4, 6, 10, 2),
(4, 6, 11, 1),
(4, 6, 12, 1),
(4, 6, 13, 1),
(4, 6, 14, 1),
(4, 6, 15, 2),
(4, 6, 16, 1),
(4, 6, 17, 1),
(4, 7, 1, 1),
(4, 7, 2, 0.5),
(4, 7, 3, 0.5),
(4, 7, 4, 0.5),
(4, 7, 5, 1),
(4, 7, 6, 1),
(4, 7, 7, 1),
(4, 7, 8, 0.5),
(4, 7, 9, 0.5),
(4, 7, 10, 0.5),
(4, 7, 11, 1),
(4, 7, 12, 2),
(4, 7, 13, 1),
(4, 7, 14, 2),
(4, 7, 15, 1),
(4, 7, 16, 1),
(4, 7, 17, 2),
(4, 8, 1, 0),
(4, 8, 2, 1),
(4, 8, 3, 1),
(4, 8, 4, 1),
(4, 8, 5, 1),
(4, 8, 6, 1),
(4, 8, 7, 1),
(4, 8, 8, 2),
(4, 8, 9, 0.5),
(4, 8, 10, 1),
(4, 8, 11, 1),
(4, 8, 12, 1),
(4, 8, 13, 1),
(4, 8, 14, 2),
(4, 8, 15, 1),
(4, 8, 16, 1),
(4, 8, 17, 0.5),
(4, 9, 1, 1),
(4, 9, 2, 1),
(4, 9, 3, 1),
(4, 9, 4, 1),
(4, 9, 5, 1),
(4, 9, 6, 2),
(4, 9, 7, 1),
(4, 9, 8, 1),
(4, 9, 9, 0.5),
(4, 9, 10, 0.5),
(4, 9, 11, 0.5),
(4, 9, 12, 1),
(4, 9, 13, 0.5),
(4, 9, 14, 1),
(4, 9, 15, 2),
(4, 9, 16, 1),
(4, 9, 17, 1),
(4, 10, 1, 1),
(4, 10, 2, 1),
(4, 10, 3, 1),
(4, 10, 4, 1),
(4, 10, 5, 1),
(4, 10, 6, 0.5),
(4, 10, 7, 2),
(4, 10, 8, 1),
(4, 10, 9, 2),
(4, 10, 10, 0.5),
(4, 10, 11, 0.5),
(4, 10, 12, 2),
(4, 10, 13, 1),
(4, 10, 14, 1),
(4, 10, 15, 2),
(4, 10, 16, 0.5),
(4, 10, 17, 1),
(4, 11, 1, 1),
(4, 11, 2, 1),
(4, 11, 3, 1),
(4, 11, 4, 1),
(4, 11, 5, 2),
(4, 11, 6, 2),
(4, 11, 7, 1),
(4, 11, 8, 1),
(4, 11, 9, 1),
(4, 11, 10, 2),
(4, 11, 11, 0.5),
(4, 11, 12, 0.5),
(4, 11, 13, 1),
(4, 11, 14, 1),
(4, 11, 15, 1),
(4, 11, 16, 0.5),
(4, 11, 17, 1),
(4, 12, 1, 1),
(4, 12, 2, 1),
(4, 12, 3, 0.5),
(4, 12, 4, 0.5),
(4, 12, 5, 2),
(4, 12, 6, 2),
(4, 12, 7, 0.5),
(4, 12, 8, 1),
(4, 12, 9, 0.5),
(4, 12, 10, 0.5),
(4, 12, 11, 2),
(4, 12, 12, 0.5),
(4, 12, 13, 1),
(4, 12, 14, 1),
(4, 12, 15, 1),
(4, 12, 16, 0.5),
(4, 12, 17, 1),
(4, 13, 1, 1),
(4, 13, 2, 1),
(4, 13, 3, 2),
(4, 13, 4, 1),
(4, 13, 5, 0),
(4, 13, 6, 1),
(4, 13, 7, 1),
(4, 13, 8, 1),
(4, 13, 9, 1),
(4, 13, 10, 1),
(4, 13, 11, 2),
(4, 13, 12, 0.5),
(4, 13, 13, 0.5),
(4, 13, 14, 1),
(4, 13, 15, 1),
(4, 13, 16, 0.5),
(4, 13, 17, 1),
(4, 14, 1, 1),
(4, 14, 2, 2),
(4, 14, 3, 1),
(4, 14, 4, 2),
(4, 14, 5, 1),
(4, 14, 6, 1),
(4, 14, 7, 1),
(4, 14, 8, 1),
(4, 14, 9, 0.5),
(4, 14, 10, 1),
(4, 14, 11, 1),
(4, 14, 12, 1),
(4, 14, 13, 1),
(4, 14, 14, 0.5),
(4, 14, 15, 1),
(4, 14, 16, 1),
(4, 14, 17, 0),
(4, 15, 1, 1),
(4, 15, 2, 1),
(4, 15, 3, 2),
(4, 15, 4, 1),
(4, 15, 5, 2),
(4, 15, 6, 1),
(4, 15, 7, 1),
(4, 15, 8, 1),
(4, 15, 9, 0.5),
(4, 15, 10, 0.5),
(4, 15, 11, 0.5),
(4, 15, 12, 2),
(4, 15, 13, 1),
(4, 15, 14, 1),
(4, 15, 15, 0.5),
(4, 15, 16, 2),
(4, 15, 17, 1),
(4, 16, 1, 1),
(4, 16, 2, 1),
(4, 16, 3, 1),
(4, 16, 4, 1),
(4, 16, 5, 1),
(4, 16, 6, 1),
(4, 16, 7, 1),
(4, 16, 8, 1),
(4, 16, 9, 0.5),
(4, 16, 10, 1),
(4, 16, 11, 1),
(4, 16, 12, 1),
(4, 16, 13, 1),
(4, 16, 14, 1),
(4, 16, 15, 1),
(4, 16, 16, 2),
(4, 16, 17, 1),
(4, 17, 1, 1),
(4, 17, 2, 0.5),
(4, 17, 3, 1),
(4, 17, 4, 1),
(4, 17, 5, 1),
(4, 17, 6, 1),
(4, 17, 7, 1),
(4, 17, 8, 2),
(4, 17, 9, 0.5),
(4, 17, 10, 1),
(4, 17, 11, 1),
(4, 17, 12, 1),
(4, 17, 13, 1),
(4, 17, 14, 2),
(4, 17, 15, 1),
(4, 17, 16, 1),
(4, 17, 17, 0.5),
(5, 1, 1, 1),
(5, 1, 2, 1),
(5, 1, 3, 1),
(5, 1, 4, 1),
(5, 1, 5, 1),
(5, 1, 6, 0.5),
(5, 1, 7, 1),
(5, 1, 8, 0),
(5, 1, 9, 0.5),
(5, 1, 10, 1),
(5, 1, 11, 1),
(5, 1, 12, 1),
(5, 1, 13, 1),
(5, 1, 14, 1),
(5, 1, 15, 1),
(5, 1, 16, 1),
(5, 1, 17, 1),
(5, 2, 1, 2),
(5, 2, 2, 1),
(5, 2, 3, 0.5),
(5, 2, 4, 0.5),
(5, 2, 5, 1),
(5, 2, 6, 2),
(5, 2, 7, 0.5),
(5, 2, 8, 0),
(5, 2, 9, 2),
(5, 2, 10, 1),
(5, 2, 11, 1),
(5, 2, 12, 1),
(5, 2, 13, 1),
(5, 2, 14, 0.5),
(5, 2, 15, 2),
(5, 2, 16, 1),
(5, 2, 17, 2),
(5, 3, 1, 1),
(5, 3, 2, 2),
(5, 3, 3, 1),
(5, 3, 4, 1),
(5, 3, 5, 1),
(5, 3, 6, 0.5),
(5, 3, 7, 2),
(5, 3, 8, 1),
(5, 3, 9, 0.5),
(5, 3, 10, 1),
(5, 3, 11, 1),
(5, 3, 12, 2),
(5, 3, 13, 0.5),
(5, 3, 14, 1),
(5, 3, 15, 1),
(5, 3, 16, 1),
(5, 3, 17, 1),
(5, 4, 1, 1),
(5, 4, 2, 1),
(5, 4, 3, 1),
(5, 4, 4, 0.5),
(5, 4, 5, 0.5),
(5, 4, 6, 0.5),
(5, 4, 7, 1),
(5, 4, 8, 0.5),
(5, 4, 9, 0),
(5, 4, 10, 1),
(5, 4, 11, 1),
(5, 4, 12, 2),
(5, 4, 13, 1),
(5, 4, 14, 1),
(5, 4, 15, 1),
(5, 4, 16, 1),
(5, 4, 17, 1),
(5, 5, 1, 1),
(5, 5, 2, 1),
(5, 5, 3, 0),
(5, 5, 4, 2),
(5, 5, 5, 1),
(5, 5, 6, 2),
(5, 5, 7, 0.5),
(5, 5, 8, 1),
(5, 5, 9, 2),
(5, 5, 10, 2),
(5, 5, 11, 1),
(5, 5, 12, 0.5),
(5, 5, 13, 2),
(5, 5, 14, 1),
(5, 5, 15, 1),
(5, 5, 16, 1),
(5, 5, 17, 1),
(5, 6, 1, 1),
(5, 6, 2, 0.5),
(5, 6, 3, 2),
(5, 6, 4, 1),
(5, 6, 5, 0.5),
(5, 6, 6, 1),
(5, 6, 7, 2),
(5, 6, 8, 1),
(5, 6, 9, 0.5),
(5, 6, 10, 2),
(5, 6, 11, 1),
(5, 6, 12, 1),
(5, 6, 13, 1),
(5, 6, 14, 1),
(5, 6, 15, 2),
(5, 6, 16, 1),
(5, 6, 17, 1),
(5, 7, 1, 1),
(5, 7, 2, 0.5),
(5, 7, 3, 0.5),
(5, 7, 4, 0.5),
(5, 7, 5, 1),
(5, 7, 6, 1),
(5, 7, 7, 1),
(5, 7, 8, 0.5),
(5, 7, 9, 0.5),
(5, 7, 10, 0.5),
(5, 7, 11, 1),
(5, 7, 12, 2),
(5, 7, 13, 1),
(5, 7, 14, 2),
(5, 7, 15, 1),
(5, 7, 16, 1),
(5, 7, 17, 2),
(5, 8, 1, 0),
(5, 8, 2, 1),
(5, 8, 3, 1),
(5, 8, 4, 1),
(5, 8, 5, 1),
(5, 8, 6, 1),
(5, 8, 7, 1),
(5, 8, 8, 2),
(5, 8, 9, 0.5),
(5, 8, 10, 1),
(5, 8, 11, 1),
(5, 8, 12, 1),
(5, 8, 13, 1),
(5, 8, 14, 2),
(5, 8, 15, 1),
(5, 8, 16, 1),
(5, 8, 17, 0.5),
(5, 9, 1, 1),
(5, 9, 2, 1),
(5, 9, 3, 1),
(5, 9, 4, 1),
(5, 9, 5, 1),
(5, 9, 6, 2),
(5, 9, 7, 1),
(5, 9, 8, 1),
(5, 9, 9, 0.5),
(5, 9, 10, 0.5),
(5, 9, 11, 0.5),
(5, 9, 12, 1),
(5, 9, 13, 0.5),
(5, 9, 14, 1),
(5, 9, 15, 2),
(5, 9, 16, 1),
(5, 9, 17, 1),
(5, 10, 1, 1),
(5, 10, 2, 1),
(5, 10, 3, 1),
(5, 10, 4, 1),
(5, 10, 5, 1),
(5, 10, 6, 0.5),
(5, 10, 7, 2),
(5, 10, 8, 1),
(5, 10, 9, 2),
(5, 10, 10, 0.5),
(5, 10, 11, 0.5),
(5, 10, 12, 2),
(5, 10, 13, 1),
(5, 10, 14, 1),
(5, 10, 15, 2),
(5, 10, 16, 0.5),
(5, 10, 17, 1),
(5, 11, 1, 1),
(5, 11, 2, 1),
(5, 11, 3, 1),
(5, 11, 4, 1),
(5, 11, 5, 2),
(5, 11, 6, 2),
(5, 11, 7, 1),
(5, 11, 8, 1),
(5, 11, 9, 1),
(5, 11, 10, 2),
(5, 11, 11, 0.5),
(5, 11, 12, 0.5),
(5, 11, 13, 1),
(5, 11, 14, 1),
(5, 11, 15, 1),
(5, 11, 16, 0.5),
(5, 11, 17, 1),
(5, 12, 1, 1),
(5, 12, 2, 1),
(5, 12, 3, 0.5),
(5, 12, 4, 0.5),
(5, 12, 5, 2),
(5, 12, 6, 2),
(5, 12, 7, 0.5),
(5, 12, 8, 1),
(5, 12, 9, 0.5),
(5, 12, 10, 0.5),
(5, 12, 11, 2),
(5, 12, 12, 0.5),
(5, 12, 13, 1),
(5, 12, 14, 1),
(5, 12, 15, 1),
(5, 12, 16, 0.5),
(5, 12, 17, 1),
(5, 13, 1, 1),
(5, 13, 2, 1),
(5, 13, 3, 2),
(5, 13, 4, 1),
(5, 13, 5, 0),
(5, 13, 6, 1),
(5, 13, 7, 1),
(5, 13, 8, 1),
(5, 13, 9, 1),
(5, 13, 10, 1),
(5, 13, 11, 2),
(5, 13, 12, 0.5),
(5, 13, 13, 0.5),
(5, 13, 14, 1),
(5, 13, 15, 1),
(5, 13, 16, 0.5),
(5, 13, 17, 1),
(5, 14, 1, 1),
(5, 14, 2, 2),
(5, 14, 3, 1),
(5, 14, 4, 2),
(5, 14, 5, 1),
(5, 14, 6, 1),
(5, 14, 7, 1),
(5, 14, 8, 1),
(5, 14, 9, 0.5),
(5, 14, 10, 1),
(5, 14, 11, 1),
(5, 14, 12, 1),
(5, 14, 13, 1),
(5, 14, 14, 0.5),
(5, 14, 15, 1),
(5, 14, 16, 1),
(5, 14, 17, 0),
(5, 15, 1, 1),
(5, 15, 2, 1),
(5, 15, 3, 2),
(5, 15, 4, 1),
(5, 15, 5, 2),
(5, 15, 6, 1),
(5, 15, 7, 1),
(5, 15, 8, 1),
(5, 15, 9, 0.5),
(5, 15, 10, 0.5),
(5, 15, 11, 0.5),
(5, 15, 12, 2),
(5, 15, 13, 1),
(5, 15, 14, 1),
(5, 15, 15, 0.5),
(5, 15, 16, 2),
(5, 15, 17, 1),
(5, 16, 1, 1),
(5, 16, 2, 1),
(5, 16, 3, 1),
(5, 16, 4, 1),
(5, 16, 5, 1),
(5, 16, 6, 1),
(5, 16, 7, 1),
(5, 16, 8, 1),
(5, 16, 9, 0.5),
(5, 16, 10, 1),
(5, 16, 11, 1),
(5, 16, 12, 1),
(5, 16, 13, 1),
(5, 16, 14, 1),
(5, 16, 15, 1),
(5, 16, 16, 2),
(5, 16, 17, 1),
(5, 17, 1, 1),
(5, 17, 2, 0.5),
(5, 17, 3, 1),
(5, 17, 4, 1),
(5, 17, 5, 1),
(5, 17, 6, 1),
(5, 17, 7, 1),
(5, 17, 8, 2),
(5, 17, 9, 0.5),
(5, 17, 10, 1),
(5, 17, 11, 1),
(5, 17, 12, 1),
(5, 17, 13, 1),
(5, 17, 14, 2),
(5, 17, 15, 1),
(5, 17, 16, 1),
(5, 17, 17, 0.5),
(6, 1, 1, 1),
(6, 1, 2, 1),
(6, 1, 3, 1),
(6, 1, 4, 1),
(6, 1, 5, 1),
(6, 1, 6, 0.5),
(6, 1, 7, 1),
(6, 1, 8, 0),
(6, 1, 9, 0.5),
(6, 1, 10, 1),
(6, 1, 11, 1),
(6, 1, 12, 1),
(6, 1, 13, 1),
(6, 1, 14, 1),
(6, 1, 15, 1),
(6, 1, 16, 1),
(6, 1, 17, 1),
(6, 1, 18, 1),
(6, 2, 1, 2),
(6, 2, 2, 1),
(6, 2, 3, 0.5),
(6, 2, 4, 0.5),
(6, 2, 5, 1),
(6, 2, 6, 2),
(6, 2, 7, 0.5),
(6, 2, 8, 0),
(6, 2, 9, 2),
(6, 2, 10, 1),
(6, 2, 11, 1),
(6, 2, 12, 1),
(6, 2, 13, 1),
(6, 2, 14, 0.5),
(6, 2, 15, 2),
(6, 2, 16, 1),
(6, 2, 17, 2),
(6, 2, 18, 0.5),
(6, 3, 1, 1),
(6, 3, 2, 2),
(6, 3, 3, 1),
(6, 3, 4, 1),
(6, 3, 5, 1),
(6, 3, 6, 0.5),
(6, 3, 7, 2),
(6, 3, 8, 1),
(6, 3, 9, 0.5),
(6, 3, 10, 1),
(6, 3, 11, 1),
(6, 3, 12, 2),
(6, 3, 13, 0.5),
(6, 3, 14, 1),
(6, 3, 15, 1),
(6, 3, 16, 1),
(6, 3, 17, 1),
(6, 3, 18, 1),
(6, 4, 1, 1),
(6, 4, 2, 1),
(6, 4, 3, 1),
(6, 4, 4, 0.5),
(6, 4, 5, 0.5),
(6, 4, 6, 0.5),
(6, 4, 7, 1),
(6, 4, 8, 0.5),
(6, 4, 9, 0),
(6, 4, 10, 1),
(6, 4, 11, 1),
(6, 4, 12, 2),
(6, 4, 13, 1),
(6, 4, 14, 1),
(6, 4, 15, 1),
(6, 4, 16, 1),
(6, 4, 17, 1),
(6, 4, 18, 2),
(6, 5, 1, 1),
(6, 5, 2, 1),
(6, 5, 3, 0),
(6, 5, 4, 2),
(6, 5, 5, 1),
(6, 5, 6, 2),
(6, 5, 7, 0.5),
(6, 5, 8, 1),
(6, 5, 9, 2),
(6, 5, 10, 2),
(6, 5, 11, 1),
(6, 5, 12, 0.5),
(6, 5, 13, 2),
(6, 5, 14, 1),
(6, 5, 15, 1),
(6, 5, 16, 1),
(6, 5, 17, 1),
(6, 5, 18, 1),
(6, 6, 1, 1),
(6, 6, 2, 0.5),
(6, 6, 3, 2),
(6, 6, 4, 1),
(6, 6, 5, 0.5),
(6, 6, 6, 1),
(6, 6, 7, 2),
(6, 6, 8, 1),
(6, 6, 9, 0.5),
(6, 6, 10, 2),
(6, 6, 11, 1),
(6, 6, 12, 1),
(6, 6, 13, 1),
(6, 6, 14, 1),
(6, 6, 15, 2),
(6, 6, 16, 1),
(6, 6, 17, 1),
(6, 6, 18, 1),
(6, 7, 1, 1),
(6, 7, 2, 0.5),
(6, 7, 3, 0.5),
(6, 7, 4, 0.5),
(6, 7, 5, 1),
(6, 7, 6, 1),
(6, 7, 7, 1),
(6, 7, 8, 0.5),
(6, 7, 9, 0.5),
(6, 7, 10, 0.5),
(6, 7, 11, 1),
(6, 7, 12, 2),
(6, 7, 13, 1),
(6, 7, 14, 2),
(6, 7, 15, 1),
(6, 7, 16, 1),
(6, 7, 17, 2),
(6, 7, 18, 0.5),
(6, 8, 1, 0),
(6, 8, 2, 1),
(6, 8, 3, 1),
(6, 8, 4, 1),
(6, 8, 5, 1),
(6, 8, 6, 1),
(6, 8, 7, 1),
(6, 8, 8, 2),
(6, 8, 9, 1),
(6, 8, 10, 1),
(6, 8, 11, 1),
(6, 8, 12, 1),
(6, 8, 13, 1),
(6, 8, 14, 2),
(6, 8, 15, 1),
(6, 8, 16, 1),
(6, 8, 17, 0.5),
(6, 8, 18, 1),
(6, 9, 1, 1),
(6, 9, 2, 1),
(6, 9, 3, 1),
(6, 9, 4, 1),
(6, 9, 5, 1),
(6, 9, 6, 2),
(6, 9, 7, 1),
(6, 9, 8, 1),
(6, 9, 9, 0.5),
(6, 9, 10, 0.5),
(6, 9, 11, 0.5),
(6, 9, 12, 1),
(6, 9, 13, 0.5),
(6, 9, 14, 1),
(6, 9, 15, 2),
(6, 9, 16, 1),
(6, 9, 17, 1),
(6, 9, 18, 2),
(6, 10, 1, 1),
(6, 10, 2, 1),
(6, 10, 3, 1),
(6, 10, 4, 1),
(6, 10, 5, 1),
(6, 10, 6, 0.5),
(6, 10, 7, 2),
(6, 10, 8, 1),
(6, 10, 9, 2),
(6, 10, 10, 0.5),
(6, 10, 11, 0.5),
(6, 10, 12, 2),
(6, 10, 13, 1),
(6, 10, 14, 1),
(6, 10, 15, 2),
(6, 10, 16, 0.5),
(6, 10, 17, 1),
(6, 10, 18, 1),
(6, 11, 1, 1),
(6, 11, 2, 1),
(6, 11, 3, 1),
(6, 11, 4, 1),
(6, 11, 5, 2),
(6, 11, 6, 2),
(6, 11, 7, 1),
(6, 11, 8, 1),
(6, 11, 9, 1),
(6, 11, 10, 2),
(6, 11, 11, 0.5),
(6, 11, 12, 0.5),
(6, 11, 13, 1),
(6, 11, 14, 1),
(6, 11, 15, 1),
(6, 11, 16, 0.5),
(6, 11, 17, 1),
(6, 11, 18, 1),
(6, 12, 1, 1),
(6, 12, 2, 1),
(6, 12, 3, 0.5),
(6, 12, 4, 0.5),
(6, 12, 5, 2),
(6, 12, 6, 2),
(6, 12, 7, 0.5),
(6, 12, 8, 1),
(6, 12, 9, 0.5),
(6, 12, 10, 0.5),
(6, 12, 11, 2),
(6, 12, 12, 0.5),
(6, 12, 13, 1),
(6, 12, 14, 1),
(6, 12, 15, 1),
(6, 12, 16, 0.5),
(6, 12, 17, 1),
(6, 12, 18, 1),
(6, 13, 1, 1),
(6, 13, 2, 1),
(6, 13, 3, 2),
(6, 13, 4, 1),
(6, 13, 5, 0),
(6, 13, 6, 1),
(6, 13, 7, 1),
(6, 13, 8, 1),
(6, 13, 9, 1),
(6, 13, 10, 1),
(6, 13, 11, 2),
(6, 13, 12, 0.5),
(6, 13, 13, 0.5),
(6, 13, 14, 1),
(6, 13, 15, 1),
(6, 13, 16, 0.5),
(6, 13, 17, 1),
(6, 13, 18, 1),
(6, 14, 1, 1),
(6, 14, 2, 2),
(6, 14, 3, 1),
(6, 14, 4, 2),
(6, 14, 5, 1),
(6, 14, 6, 1),
(6, 14, 7, 1),
(6, 14, 8, 1),
(6, 14, 9, 0.5),
(6, 14, 10, 1),
(6, 14, 11, 1),
(6, 14, 12, 1),
(6, 14, 13, 1),
(6, 14, 14, 0.5),
(6, 14, 15, 1),
(6, 14, 16, 1),
(6, 14, 17, 0),
(6, 14, 18, 1),
(6, 15, 1, 1),
(6, 15, 2, 1),
(6, 15, 3, 2),
(6, 15, 4, 1),
(6, 15, 5, 2),
(6, 15, 6, 1),
(6, 15, 7, 1),
(6, 15, 8, 1),
(6, 15, 9, 0.5),
(6, 15, 10, 0.5),
(6, 15, 11, 0.5),
(6, 15, 12, 2),
(6, 15, 13, 1),
(6, 15, 14, 1),
(6, 15, 15, 0.5),
(6, 15, 16, 2),
(6, 15, 17, 1),
(6, 15, 18, 1),
(6, 16, 1, 1),
(6, 16, 2, 1),
(6, 16, 3, 1),
(6, 16, 4, 1),
(6, 16, 5, 1),
(6, 16, 6, 1),
(6, 16, 7, 1),
(6, 16, 8, 1),
(6, 16, 9, 0.5),
(6, 16, 10, 1),
(6, 16, 11, 1),
(6, 16, 12, 1),
(6, 16, 13, 1),
(6, 16, 14, 1),
(6, 16, 15, 1),
(6, 16, 16, 2),
(6, 16, 17, 1),
(6, 16, 18, 0),
(6, 17, 1, 1),
(6, 17, 2, 0.5),
(6, 17, 3, 1),
(6, 17, 4, 1),
(6, 17, 5, 1),
(6, 17, 6, 1),
(6, 17, 7, 1),
(6, 17, 8, 2),
(6, 17, 9, 1),
(6, 17, 10, 1),
(6, 17, 11, 1),
(6, 17, 12, 1),
(6, 17, 13, 1),
(6, 17, 14, 2),
(6, 17, 15, 1),
(6, 17, 16, 1),
(6, 17, 17, 0.5),
(6, 17, 18, 0.5),
(6, 18, 1, 1),
(6, 18, 2, 2),
(6, 18, 3, 1),
(6, 18, 4, 0.5),
(6, 18, 5, 1),
(6, 18, 6, 1),
(6, 18, 7, 1),
(6, 18, 8, 1),
(6, 18, 9, 0.5),
(6, 18, 10, 0.5),
(6, 18, 11, 1),
(6, 18, 12, 1),
(6, 18, 13, 1),
(6, 18, 14, 1),
(6, 18, 15, 1),
(6, 18, 16, 2),
(6, 18, 17, 2),
(6, 18, 18, 1),
(7, 1, 1, 1),
(7, 1, 2, 1),
(7, 1, 3, 1),
(7, 1, 4, 1),
(7, 1, 5, 1),
(7, 1, 6, 0.5),
(7, 1, 7, 1),
(7, 1, 8, 0),
(7, 1, 9, 0.5),
(7, 1, 10, 1),
(7, 1, 11, 1),
(7, 1, 12, 1),
(7, 1, 13, 1),
(7, 1, 14, 1),
(7, 1, 15, 1),
(7, 1, 16, 1),
(7, 1, 17, 1),
(7, 1, 18, 1),
(7, 2, 1, 2),
(7, 2, 2, 1),
(7, 2, 3, 0.5),
(7, 2, 4, 0.5),
(7, 2, 5, 1),
(7, 2, 6, 2),
(7, 2, 7, 0.5),
(7, 2, 8, 0),
(7, 2, 9, 2),
(7, 2, 10, 1),
(7, 2, 11, 1),
(7, 2, 12, 1),
(7, 2, 13, 1),
(7, 2, 14, 0.5),
(7, 2, 15, 2),
(7, 2, 16, 1),
(7, 2, 17, 2),
(7, 2, 18, 0.5),
(7, 3, 1, 1),
(7, 3, 2, 2),
(7, 3, 3, 1),
(7, 3, 4, 1),
(7, 3, 5, 1),
(7, 3, 6, 0.5),
(7, 3, 7, 2),
(7, 3, 8, 1),
(7, 3, 9, 0.5),
(7, 3, 10, 1),
(7, 3, 11, 1),
(7, 3, 12, 2),
(7, 3, 13, 0.5),
(7, 3, 14, 1),
(7, 3, 15, 1),
(7, 3, 16, 1),
(7, 3, 17, 1),
(7, 3, 18, 1),
(7, 4, 1, 1),
(7, 4, 2, 1),
(7, 4, 3, 1),
(7, 4, 4, 0.5),
(7, 4, 5, 0.5),
(7, 4, 6, 0.5),
(7, 4, 7, 1),
(7, 4, 8, 0.5),
(7, 4, 9, 0),
(7, 4, 10, 1),
(7, 4, 11, 1),
(7, 4, 12, 2),
(7, 4, 13, 1),
(7, 4, 14, 1),
(7, 4, 15, 1),
(7, 4, 16, 1),
(7, 4, 17, 1),
(7, 4, 18, 2),
(7, 5, 1, 1),
(7, 5, 2, 1),
(7, 5, 3, 0),
(7, 5, 4, 2),
(7, 5, 5, 1),
(7, 5, 6, 2),
(7, 5, 7, 0.5),
(7, 5, 8, 1),
(7, 5, 9, 2),
(7, 5, 10, 2),
(7, 5, 11, 1),
(7, 5, 12, 0.5),
(7, 5, 13, 2),
(7, 5, 14, 1),
(7, 5, 15, 1),
(7, 5, 16, 1),
(7, 5, 17, 1),
(7, 5, 18, 1),
(7, 6, 1, 1),
(7, 6, 2, 0.5),
(7, 6, 3, 2),
(7, 6, 4, 1),
(7, 6, 5, 0.5),
(7, 6, 6, 1),
(7, 6, 7, 2),
(7, 6, 8, 1),
(7, 6, 9, 0.5),
(7, 6, 10, 2),
(7, 6, 11, 1),
(7, 6, 12, 1),
(7, 6, 13, 1),
(7, 6, 14, 1),
(7, 6, 15, 2),
(7, 6, 16, 1),
(7, 6, 17, 1),
(7, 6, 18, 1),
(7, 7, 1, 1),
(7, 7, 2, 0.5),
(7, 7, 3, 0.5),
(7, 7, 4, 0.5),
(7, 7, 5, 1),
(7, 7, 6, 1),
(7, 7, 7, 1),
(7, 7, 8, 0.5),
(7, 7, 9, 0.5),
(7, 7, 10, 0.5),
(7, 7, 11, 1),
(7, 7, 12, 2),
(7, 7, 13, 1),
(7, 7, 14, 2),
(7, 7, 15, 1),
(7, 7, 16, 1),
(7, 7, 17, 2),
(7, 7, 18, 0.5),
(7, 8, 1, 0),
(7, 8, 2, 1),
(7, 8, 3, 1),
(7, 8, 4, 1),
(7, 8, 5, 1),
(7, 8, 6, 1),
(7, 8, 7, 1),
(7, 8, 8, 2),
(7, 8, 9, 1),
(7, 8, 10, 1),
(7, 8, 11, 1),
(7, 8, 12, 1),
(7, 8, 13, 1),
(7, 8, 14, 2),
(7, 8, 15, 1),
(7, 8, 16, 1),
(7, 8, 17, 0.5),
(7, 8, 18, 1),
(7, 9, 1, 1),
(7, 9, 2, 1),
(7, 9, 3, 1),
(7, 9, 4, 1),
(7, 9, 5, 1),
(7, 9, 6, 2),
(7, 9, 7, 1),
(7, 9, 8, 1),
(7, 9, 9, 0.5),
(7, 9, 10, 0.5),
(7, 9, 11, 0.5),
(7, 9, 12, 1),
(7, 9, 13, 0.5),
(7, 9, 14, 1),
(7, 9, 15, 2),
(7, 9, 16, 1),
(7, 9, 17, 1),
(7, 9, 18, 2),
(7, 10, 1, 1),
(7, 10, 2, 1),
(7, 10, 3, 1),
(7, 10, 4, 1),
(7, 10, 5, 1),
(7, 10, 6, 0.5),
(7, 10, 7, 2),
(7, 10, 8, 1),
(7, 10, 9, 2),
(7, 10, 10, 0.5),
(7, 10, 11, 0.5),
(7, 10, 12, 2),
(7, 10, 13, 1),
(7, 10, 14, 1),
(7, 10, 15, 2),
(7, 10, 16, 0.5),
(7, 10, 17, 1),
(7, 10, 18, 1),
(7, 11, 1, 1),
(7, 11, 2, 1),
(7, 11, 3, 1),
(7, 11, 4, 1),
(7, 11, 5, 2),
(7, 11, 6, 2),
(7, 11, 7, 1),
(7, 11, 8, 1),
(7, 11, 9, 1),
(7, 11, 10, 2),
(7, 11, 11, 0.5),
(7, 11, 12, 0.5),
(7, 11, 13, 1),
(7, 11, 14, 1),
(7, 11, 15, 1),
(7, 11, 16, 0.5),
(7, 11, 17, 1),
(7, 11, 18, 1),
(7, 12, 1, 1),
(7, 12, 2, 1),
(7, 12, 3, 0.5),
(7, 12, 4, 0.5),
(7, 12, 5, 2),
(7, 12, 6, 2),
(7, 12, 7, 0.5),
(7, 12, 8, 1),
(7, 12, 9, 0.5),
(7, 12, 10, 0.5),
(7, 12, 11, 2),
(7, 12, 12, 0.5),
(7, 12, 13, 1),
(7, 12, 14, 1),
(7, 12, 15, 1),
(7, 12, 16, 0.5),
(7, 12, 17, 1),
(7, 12, 18, 1),
(7, 13, 1, 1),
(7, 13, 2, 1),
(7, 13, 3, 2),
(7, 13, 4, 1),
(7, 13, 5, 0),
(7, 13, 6, 1),
(7, 13, 7, 1),
(7, 13, 8, 1),
(7, 13, 9, 1),
(7, 13, 10, 1),
(7, 13, 11, 2),
(7, 13, 12, 0.5),
(7, 13, 13, 0.5),
(7, 13, 14, 1),
(7, 13, 15, 1),
(7, 13, 16, 0.5),
(7, 13, 17, 1),
(7, 13, 18, 1),
(7, 14, 1, 1),
(7, 14, 2, 2),
(7, 14, 3, 1),
(7, 14, 4, 2),
(7, 14, 5, 1),
(7, 14, 6, 1),
(7, 14, 7, 1),
(7, 14, 8, 1),
(7, 14, 9, 0.5),
(7, 14, 10, 1),
(7, 14, 11, 1),
(7, 14, 12, 1),
(7, 14, 13, 1),
(7, 14, 14, 0.5),
(7, 14, 15, 1),
(7, 14, 16, 1),
(7, 14, 17, 0),
(7, 14, 18, 1),
(7, 15, 1, 1),
(7, 15, 2, 1),
(7, 15, 3, 2),
(7, 15, 4, 1),
(7, 15, 5, 2),
(7, 15, 6, 1),
(7, 15, 7, 1),
(7, 15, 8, 1),
(7, 15, 9, 0.5),
(7, 15, 10, 0.5),
(7, 15, 11, 0.5),
(7, 15, 12, 2),
(7, 15, 13, 1),
(7, 15, 14, 1),
(7, 15, 15, 0.5),
(7, 15, 16, 2),
(7, 15, 17, 1),
(7, 15, 18, 1),
(7, 16, 1, 1),
(7, 16, 2, 1),
(7, 16, 3, 1),
(7, 16, 4, 1),
(7, 16, 5, 1),
(7, 16, 6, 1),
(7, 16, 7, 1),
(7, 16, 8, 1),
(7, 16, 9, 0.5),
(7, 16, 10, 1),
(7, 16, 11, 1),
(7, 16, 12, 1),
(7, 16, 13, 1),
(7, 16, 14, 1),
(7, 16, 15, 1),
(7, 16, 16, 2),
(7, 16, 17, 1),
(7, 16, 18, 0),
(7, 17, 1, 1),
(7, 17, 2, 0.5),
(7, 17, 3, 1),
(7, 17, 4, 1),
(7, 17, 5, 1),
(7, 17, 6, 1),
(7, 17, 7, 1),
(7, 17, 8, 2),
(7, 17, 9, 1),
(7, 17, 10, 1),
(7, 17, 11, 1),
(7, 17, 12, 1),
(7, 17, 13, 1),
(7, 17, 14, 2),
(7, 17, 15, 1),
(7, 17, 16, 1),
(7, 17, 17, 0.5),
(7, 17, 18, 0.5),
(7, 18, 1, 1),
(7, 18, 2, 2),
(7, 18, 3, 1),
(7, 18, 4, 0.5),
(7, 18, 5, 1),
(7, 18, 6, 1),
(7, 18, 7, 1),
(7, 18, 8, 1),
(7, 18, 9, 0.5),
(7, 18, 10, 0.5),
(7, 18, 11, 1),
(7, 18, 12, 1),
(7, 18, 13, 1),
(7, 18, 14, 1),
(7, 18, 15, 1),
(7, 18, 16, 2),
(7, 18, 17, 2),
(7, 18, 18, 1)
;
