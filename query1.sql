--�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.
select u.urunAd, u.urunKod, u.listeFiyat+ u.listeFiyat*u.KDVoran [Fiyat]  from tblUrun u;