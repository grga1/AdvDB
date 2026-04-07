-- На сликата подолу е прикажан дел од ЕР дијаграмот на база на податоци за водење евиденција за ковид-19.


-- Релационата база е дефинирана преку следните релации:

-- Lice(id, mbr, ime, prezime, data_r, vozrast, pol)

-- Med_lice(id*, staz)

-- Test(id*, shifra, tip, datum, rezultat, laboratorija)

-- Vakcina(shifra, ime, proizvoditel)

-- Vakcinacija(id_lice*, id_med_lice*, shifra_vakcina*)

-- Vakcinacija_datum(id_lice*, id_med_lice*, shifra_vakcina*, datum)

-- Да се напише DML израз со кој ќе се вратат матичните броеви на лицата (сортирани во растечки редослед) кои биле позитивни 
--   и потоа примиле барем една доза вакцина.

select distinct l.id
FROM Lice l 
JOIN Test t on t.id = l.id
join Vakcinacija_datum vd on vd.id_lice= l.id
where t.rezultat='pozitiven' and  t.datum < vd.datum
order by l.id asc
