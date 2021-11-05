select название, год_выпуска From Альбомы
where год_выпуска = 2018
select название, длительность From Треки
order by длительность desc
limit 1;
select название From Треки
where длительность >= 210;
select название From Сборники
where год_выпуска between 2018 and 2020;
select имя From Исполнители
where имя not like '% %';
select название From Треки
where название  like '%мой%' or название like '%Мой%';