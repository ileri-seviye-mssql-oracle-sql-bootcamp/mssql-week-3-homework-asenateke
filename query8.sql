--Ad� A ile ba�lay�p soyad�nda ak ge�en m��terilerden en fazla sipari� vereni bulunuz.

select  k.kullaniciKod, count(*) [Siparis Sayisi] from tblSiparis s
inner join tblKullanici k on s.kullaniciKod = k.kullaniciKod
where k.isim like 'a%' and k.soyad like '%ak%' 
group by k.kullaniciKod

