--En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ 
--veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.


select  k.isim + ' ' + k.soyad [ Ad Soyad], u.urunAd [Urunler]  from tblKullanici k
inner join tblSiparis s on k.kullaniciKod =  s.kullaniciKod 
inner join tblSiparisDetay sd  on sd.faturaKod = s.faturaKod
inner join tblUrun u on sd.urunKod = u.urunKod
where s.toplam =  (select  MAX (s.toplam) [Tutar] from tblSiparis s)
