INSERT INTO Produccion (cultivo_id, cultivo_nombre, anio, produccion)
VALUES (1, 'maiz', 2018, 85695),
(1, 'maiz', 2017, 96254),
(1, 'maiz', 2016, 12634),
(2, 'trigo', 2018, 254892),
(2, 'trigo', 2017, 725474),
(2, 'trigo', 2016, 965234),
(3, 'algodon', 2018, 25641),
(3, 'algodon', 2017, 85633),
(3, 'algodon', 2016, 45264)
;
INSERT INTO Superficie (cultivo_id, anio, superficie_sembrada)
VALUES (1, 2018, 8595),
(1, 2017, 6214),
(1, 2016, 2614),
(2, 2018, 54882),
(2, 2017, 25414),
(2, 2016, 65244),
(3, 2018, 5661),
(3, 2017, 5613),
(3, 2016, 4224)
;
INSERT INTO Rendimiento (cultivo_id, anio, rendimiento)
VALUES (1, 2018, 3.6),
(1, 2017, 4.8),
(1, 2016, 4.1),
(2, 2018, 4.8),
(2, 2017, 9.7),
(2, 2016, 9.9),
(3, 2018, 5.3),
(3, 2017, 5.1),
(3, 2016, 5.8)
;