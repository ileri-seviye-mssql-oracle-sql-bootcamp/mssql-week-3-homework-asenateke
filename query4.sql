--01.02.2007 - 05.03.2014 tarihleri arasýnda hangi üründen kaç adet sipariþ edildiðini bulan SQL kodunu yazýnýz.


select sd.urunKod, u.urunAd, sum(sd.adet) [Toplam]  from tblSiparisDetay sd
	inner join tblSiparis s on s.faturaKod = sd.faturaKod
	inner join tblUrun u on sd.urunKod = u.urunKod
	where s.siparisTarih between '01.01.2007' and  '05.03.2014'
	group by sd.urunKod, u.urunAd
