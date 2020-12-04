--Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.

select  k.kullaniciKod, count(*) [Siparis Sayisi] from tblSiparis s
inner join tblKullanici k on s.kullaniciKod = k.kullaniciKod
where k.isim like 'a%' and k.soyad like '%ak%' 
group by k.kullaniciKod

