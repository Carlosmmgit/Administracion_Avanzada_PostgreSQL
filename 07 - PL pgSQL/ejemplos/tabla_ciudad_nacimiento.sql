CREATE table ciudad(ciudad_id numeric, n_habitantes numeric);
CREATE table nacimiento(reg_id numeric, name varchar, id_provincia numeric);

select*from nacimiento;
select*from ciudad;
insert into nacimiento values(100,'Rafa',3), (101, 'Pepe', 3), (102, 'Jesus', 3);

select*from nacimiento;
select * from ciudad;
