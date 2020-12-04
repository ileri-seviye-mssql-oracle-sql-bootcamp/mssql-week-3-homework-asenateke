--Ýptal edilen sipariþlerde bulunan ürünleri listeyiniz.

select u.urunKod, u.urunAd, s.siparisDurumKod  from tblUrun u
	inner join tblSiparisDetay sd on  sd.urunKod = u.urunKod
	inner join tblSiparis s on sd.faturaKod = s.faturaKod
	where s.siparisDurumKod =10
