--En y�ksek toplam fiyata sahip faturaya dahil �r�nleri ve faturay� sipari� 
--veren m��terinin ad�n� soyad�n� listeyen SQL kodunu yaz�n�z.


select  k.isim + ' ' + k.soyad [ Ad Soyad], u.urunAd [Urunler]  from tblKullanici k
inner join tblSiparis s on k.kullaniciKod =  s.kullaniciKod 
inner join tblSiparisDetay sd  on sd.faturaKod = s.faturaKod
inner join tblUrun u on sd.urunKod = u.urunKod
where s.toplam =  (select  MAX (s.toplam) [Tutar] from tblSiparis s)
