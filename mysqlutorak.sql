SELECT mbrStud,imeStud, prezStud FROM stud LIMIT 10;

SELECT mbrStud,imeStud, prezStud FROM stud LIMIT 10,5;

SELECT mbrStud as "Mat. Broj: ",imeStud, prezStud FROM stud LIMIT 10,5;

SELECT mbrStud as "Mat. Broj: ", concat(imeStud, prezimeStud)  FROM stud LIMIT 10,5;


SELECT mbrStud as "Mat. Broj: ", concat(imeStud,' ',prezStud) as Student FROM stud LIMIT 10,5;

SELECT mbrStud as "Mat. Broj: ", concat(imeStud,' ',prezStud) as Student FROM stud ORDER BY mbrStud DESC;

SELECT DISTINCT imeStud FROM stud ORDER BY imeStud DESC;

SELECT imeNastavnik, prezNastavnik,	(koef + 0.4)* 800 as 'Plaća' FROM nastavnik;

SELECT imeStud, prezStud , sifPred, ocjena, datIspit FROM stud JOIN ispit ON ispit.mbrStud=stud.mbrStud
WHERE sifPred = 146 AND ocjena > 1
GROUP BY imeSTud, prezStud;


SELECT imeStud, prezStud ocjena FROM stud JOIN ispit ON 
ispit.mbrStud=stud.mbrStud
WHERE ocjena = 1


SELECT imeStud, prezStud, ocjena FROM stud JOIN ispit ON 
ispit.mbrStud=stud.mbrStud
WHERE ispit.mbrStud BETWEEN 1230 and 1300

SELECT imeStud, prezStud, ocjena, nazPred FROM stud 
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN pred ON ispit.sifPred=pred.sifPred
WHERE ocjena = 1 AND ispit.sifPred BETWEEN 220 AND 240;


SELECT * FROM stud WHERE imeStud LIKE 'A%o' /* starts with A endswith o */
SELECT * FROM stud WHERE imeStud LIKE '%nk%' /*  */
SELECT DISTINCT imeStud FROM stud WHERE imeStud LIKE 'A%o' /*select oposit*/

SELECT DISTINCT imeStud FROM stud WHERE imeStud LIKE '_a%__' /*_ empty space */

SELECT DISTINCT imeStud FROM stud WHERE LEFT(imeStud, 1) IN ('a','e','i','o','u') and RIGHT(imeStud,1) IN  ('a','e','i','o','u') /* find rows with a,e,i,o,u */


SELECT nazPred FROM pred 
LEFT JOIN ispit ON ispit.sifPred=pred.sifPred
WHERE ispit.sifPred is null


SELECT DISTINCT nazMjesto FROM mjesto
JOIN stud ON mjesto.pbr=stud.pbrStan

SELECT imeNastavnik, prezNastavnik, imeStud, prezStud FROM stud
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN nastavnik ON ispit.sifNastavnik=nastavnik.sifNastavnik
WHERE prezStud = prezNastavnik
 
SELECT imeStud, prezStud, nazMjesto,nazPred FROM stud
JOIN mjesto ON stud.pbrStan=mjesto.pbr
JOIN ispit ON ispit.mbrStud=stud.mbrStud
JOIN pred ON ispit.sifPred=pred.sifPred
WHERE ocjena = 1 AND nazPred = 'Osnove baza podataka'
 





