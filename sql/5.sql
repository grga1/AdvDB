select distinct k.ime,k.prezime
from Korisnik k
join Premium_korisnik pk on pk.k_ime = k.k_ime
join Preporaka pre on pre.k_ime_od = k.k_ime
join Video_zapis vz on vz.naslov = pre.naslov
where vz.vremetraenje>120 and pre.ocena>=4
order by k.datum_reg asc
