create table tb_bandas (
  id int primary key auto_increment,
  nome_banda varchar(100) not null,
  estilo varchar(100) not null,
  fas int not null,
  cidade varchar(100) not null
);

insert into tb_bandas (nome_banda, estilo, fas, cidade) values
  ('Slipknot', 'Rock', 1500, 'Trumbull'),
  ('Linkin Park', 'Rock', 3000, 'Marshall'),
  ('Panic! At the disco', 'Pop Rock', 500, 'Danforth'),
  ('Draft Punk', 'Eletronica', 2000, 'Trumbull'),
  ('Maroon-5', 'Pop', 1000, 'Marshall');

select * from tb_bandas;
select nome_banda, fas from tb_bandas;
select * from tb_bandas where fas > 1000;
select * from tb_bandas where cidade = 'Trumbull';
select * from tb_bandas where estilo = 'Rock';

SET SQL_SAFE_UPDATES = 0;

update tb_bandas set fas = 2500 where nome_banda = 'Slipknot';

update tb_bandas set cidade = 'Marshall' where nome_banda = 'Panic! At the disco';

update tb_bandas set estilo = 'Pop rock' and fas = 3500 where id = 3;

update tb_bandas set cidade  = 'Nova York' where nome_banda = 'Draft Punk';

update tb_bandas set nome_banda = 'Panic!' where id = 3;

SET SQL_SAFE_UPDATES = 1;

delete from tb_bandas where nome_banda = 'Maroon-5';
delete from tb_bandas where fas < 1500;
delete from tb_bandas where estilo = 'Rock';
delete from tb_bandas where nome_banda = 'Draft Punk';
