create trigger trg_ins_nacimiento after insert on nacimiento
for each row execute procedure trg_ins();

insert into nacimiento values(101,'Raj',2);
select*from nacimiento;
select*from ciudad;



