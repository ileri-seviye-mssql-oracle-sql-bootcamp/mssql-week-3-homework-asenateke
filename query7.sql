--x numaralý ürünü en fazla sipariþ veren þehri bulunuz.


select  k.sehir, sd.adet  from tblSiparis s
	inner join tblSiparisDetay sd on sd.faturaKod = s.faturaKod
	inner join tblKullanici k on k.kullaniciKod = s.kullaniciKod
	where sd.urunKod= 2671
	group by sd.adet, k.sehir