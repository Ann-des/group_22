create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
values ('Вероника Петрова'),
		('Макар Борисов'),
		('Герман Соколов'),
		('Марк Ильин'),
		('Платон Уткин'),
		('Яна Полякова'),
		('Иван Давыдов'),
		('Ольга Потапова'),
		('Елизавета Карташова'),
		('Алексей Алексеев'),
		('Александр Попов'),
		('Артём Савельев'),
		('Николай Петров'),
		('София Рожкова'),
		('Алиса Иванова'),
		('Роман Щербаков'),
		('Яна Наумова'),
		('Аделина Исаева'),
		('Есения Андреева'),
		('Алиса Чернова'),
		('Илья Кравцов'),
		('Савелий Герасимов'),
		('Маргарита Семенова'),
		('Александр Шестаков'),
		('Александр Баранов'),
		('Андрей Беляев'),
		('Александра Зайцева'),
		('Алиса Дубова'),
		('Мария Леонтьева'),
		('София Новикова'),
		('Егор Ершов'),
		('Давид Дорофеев'),
		('Екатерина Смирнова'),
		('Андрей Иванов'),
		('Роман Дубровин'),
		('Тихон Кондратов'),
		('Арсений Зимин'),
		('Ника Семенова'),
		('Тимофей Кошелев'),
		('Виктория Нестерова'),
		('Мария Савельева'),
		('Кирилл Сорокин'),
		('Виктория Алексеева'),
		('София Тимофеева'),
		('Милана Васильева'),
		('Ярослав Сорокин'),
		('Мирон Петров'),
		('Александр Герасимов'),
		('Ариана Соловьева'),
		('Вероника Трошина'),
		('Василий Виноградов'),
		('Лев Вешняков'),
		('Степан Быков'),
		('Виктория Лапина'),
		('Кирилл Захаров'),
		('Виктория Фадеева'),
		('Всеволод Баранов'),
		('Роман Лебедев'),
		('Артём Фокин'),
		('Юлия Дьякова'),
		('Марианна Никонова'),
		('Анна Фадеева'),
		('Георгий Смирнов'),
		('Константин Малышев'),
		('Софья Моисеева'),
		('Елизавета Грекова'),
		('Лев Мельников'),
		('Марк Ткачев'),
		('Вера Куприянова'),
		('Антонина Кузнецова');
		
create table salary(
	id serial primary key,
	monthly_salary int not null
);		
		
select * from salary;		
		
insert into salary(monthly_salary)		
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400);
		
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);		
		
select * from employee_salary;

insert into employee_salary (employee_id, salary_id)
values (1,2),
		(2,4),
		(3,5),
		(4,3),
		(5,1),
		(6,7),
		(7,8),
		(8,9),
		(9,7),
		(10,4),
		(11,5),
		(12,3),
		(13,7),
		(14,8),
		(15,10),
		(16,12),
		(17,11),
		(18,10),
		(19,9),
		(20,8),
		(21,11),
		(22,5),
		(23,10),
		(24,11),
		(25,6),
		(26,13),
		(27,14),
		(28,15),
		(29,13),
		(30,14),
		(71,10),
		(72,11),
		(73,12),
		(74,9),
		(75,8),
		(76,9),
		(77,10),
		(78,7),
		(79,6),
		(80,6);
		
create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

select * from roles_employee;

insert into roles_employee (employee_id, role_id)
values (7,2),
		(20,4),
		(3,9),
		(5,13),
		(23,4),
		(11,2),
		(10,9),
		(22,13),
		(21,3),
		(34,4),
		(6,7),
		(12,8),
		(13,7),
		(35,10),
		(26,15),
		(27,18),
		(28,20),
		(18,13),
		(19,16),
		(37,1),
		(38,5),
		(39,6),
		(40,7),
		(42,8),
		(43,9),
		(47,12),
		(50,18),
		(51,3),
		(52,4),
		(1,5),
		(2,8),
		(53,9),
		(55,10),
		(56,19),
		(57,20),
		(58,17),
		(59,11),
		(60,14),
		(61,16),
		(62,14);




	