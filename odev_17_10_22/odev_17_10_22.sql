-- ÖDEV : Sinema Otomasyonu en az 10 tabloluk database hazırlanıp bugün ki soruların hepsini uygula.

-- Kapasitesi en az olan salon hangisidir?
--select MIN(kapasite) from TBL_Salon

-- Personellerde adı b-s arasında olan ve doğum tarihi 1993'den öncesi olan kaç personel vardır?
--select COUNT(PersonelId) from TBL_Personel where PersonelAd like '[D-S]%' and YEAR(PersonelDoğumTarihi)<=1993

-- Kaç Film Türü varsa, isimlerini ve idlerini birleştir getir kolon adı verilsin a'dan z'ye sıralansın?
--select CONVERT(VARCHAR(10),FilmTurId)+' '+turu as 'Film Türleri' from TBL_FilmTur ORDER BY [Film Türleri]


-- Seanslardan 20.09.2022 ile 20.10.2022 tarihleri arasında kaç farklı seans yapılmıştır?
--select * from TBL_Seanslar where  SeansZamani between '09-20-2022' and '10-20-2022'


-- 5 nolu salon dışında dolu koltuklarda ('A','O','Z','B','S') nolu koltuklarda film izleyen toplam kişi sayısı kaçtır?
--select COUNT(KoltukId) from TBL_Koltuk where SalonId!=5 and KoltukHarf IN('A','O','Z','B','S')

-- Soyadı H ile başlayan kaç oyuncu vardır kolon adı oyuncu sayısı olsun?
--select COUNT(FilmOyuncuId) as 'Oyuncu Sayısı' from TBL_FilmOyunculari where FilmOyuncuSoyadi like '[H]%'

-- oscar biletlerinden kaç tane satış yapılmıştır?
--select COUNT(Bilet_Id) from TBL_Bilet where BiletAdı='Oscar'


--Müşterilerden öğrenci olanların isim ve soyismi birleştir ve ayrı kolonda tel no getirsin.
--select MusteriAdi+' '+MusteriSoyadi as 'Adı Soyadı', MusteriTelefon from TBL_Musteri where MusteriTipi=1


--select SUM(Freight) from orders where (CustomerID='PERIC' or CustomerID='DUMON' or CustomerID='CACTU') and ShipVia!=2 and  Freight BETWEEN 20 AND 200

