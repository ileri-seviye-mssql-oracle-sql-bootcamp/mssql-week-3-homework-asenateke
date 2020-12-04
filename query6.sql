--En fazla sipariþ veren meslek grubunu bulunuz.
select m.meslek, Count(*) [Siparis Sayisi ]from tblMeslek m
	inner join tblKullanici k on k.meslekKod = m.meslekKod
	inner join tblSiparis s on s.kullaniciKod = k.kullaniciKod
	group by m.meslek