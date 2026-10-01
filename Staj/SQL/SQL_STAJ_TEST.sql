

CREATE TABLE Calisanlar (
    id INT PRIMARY KEY IDENTITY(1,1),
    ad VARCHAR(50),
    soyad VARCHAR(50),
    yas INT,
    departman VARCHAR(50)
);

   
SELECT *
FROM Calisanlar;


INSERT INTO Calisanlar (ad, soyad, yas, departman)
VALUES ('Ahmet', 'Yilmaz', 25, 'Yazilim');

SELECT *
FROM Calisanlar;

INSERT INTO Calisanlar (ad, soyad, yas, departman)
VALUES
('Ayse', 'Kaya', 28, 'Muhendislik'),
('Mehmet', 'Demir', 23, 'Yazilim'),
('Zeynep', 'Celik', 31, 'IK');

SELECT ad, soyad, departman
FROM Calisanlar;

SELECT *
FROM Calisanlar
WHERE departman = 'Yazilim';

SELECT *
FROM Calisanlar
WHERE yas > 25;


SELECT ad, soyad, yas
FROM Calisanlar
WHERE yas >= 25
ORDER BY yas DESC;

UPDATE Calisanlar
SET departman = 'Yapay Zeka'
WHERE ad = 'Ahmet' AND soyad = 'Yilmaz';

INSERT INTO Calisanlar (ad, soyad, yas, departman)
VALUES ('Test', 'Kullanici', 20, 'Test');

SELECT *
FROM Calisanlar;

DELETE FROM Calisanlar
WHERE ad = 'Test' AND soyad = 'Kullanici';


CREATE TABLE Departmanlar (
    id INT PRIMARY KEY IDENTITY(1,1),
    departman_adi VARCHAR(50)
);


INSERT INTO Departmanlar (departman_adi)
VALUES
('Yazilim'),
('Muhendislik'),
('IK');

SELECT *
FROM Departmanlar;

ALTER TABLE Calisanlar
ADD departman_id INT;

SELECT *
FROM Calisanlar;

UPDATE Calisanlar
SET departman_id = Departmanlar.id
FROM Calisanlar
INNER JOIN Departmanlar
    ON Calisanlar.departman = Departmanlar.departman_adi;

SELECT *
FROM Calisanlar
WHERE ad = 'Ahmet' AND soyad = 'Yilmaz';

UPDATE Calisanlar
SET departman_id = 1
WHERE ad = 'Ahmet' AND soyad = 'Yilmaz';

ALTER TABLE Calisanlar
ADD CONSTRAINT FK_Calisanlar_Departmanlar
FOREIGN KEY (departman_id)
REFERENCES Departmanlar(id);

SELECT
    Calisanlar.ad,
    Calisanlar.soyad,
    Departmanlar.departman_adi
FROM Calisanlar
INNER JOIN Departmanlar
    ON Calisanlar.departman_id = Departmanlar.id;

ALTER TABLE Calisanlar
DROP COLUMN departman;

SELECT
    Calisanlar.ad,
    Calisanlar.soyad,
    Calisanlar.yas,
    Departmanlar.departman_adi
FROM Calisanlar
INNER JOIN Departmanlar
    ON Calisanlar.departman_id = Departmanlar.id;

SELECT
    Calisanlar.ad,
    Calisanlar.soyad,
    Departmanlar.departman_adi
FROM Calisanlar
LEFT JOIN Departmanlar
    ON Calisanlar.departman_id = Departmanlar.id;