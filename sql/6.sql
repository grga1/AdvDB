select distinct k.k_ime,p.naslov
from Korisnik k
join Premium_korisnik pk on pk.k_ime = k.k_ime
join Preporaka p on p.k_ime_na = k.k_ime
join Lista_zelbi lz on lz.k_ime=k.k_ime and lz.naslov = p.naslov
where p.ocena>3 and p.datum like '2021%'
order by k.k_ime
