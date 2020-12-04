--Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.
select u.urunAd, u.urunKod, u.listeFiyat+ u.listeFiyat*u.KDVoran [Fiyat]  from tblUrun u;