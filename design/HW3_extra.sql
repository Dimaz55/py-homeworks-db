create table if not exists employees (
	id serial primary key,
	name char(100) not null unique,
	department char(100) not null unique,
	boss_name char(100) references employees(name)
);