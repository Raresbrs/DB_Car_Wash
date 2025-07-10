-- 1. Selectare toti angajatii
SELECT * FROM ANGAJAT;

-- 2. Selectare toti clientii
SELECT * FROM CLIENT;

-- 3. Selectare angajatii cu salariul mai mare de 3000
SELECT * FROM ANGAJAT WHERE SALARIU > 3000;

-- 4. Selectare clientii care locuiesc pe o strada specifica
SELECT * FROM CLIENT WHERE ADRESA LIKE '%Strada Libertății%';

-- 5. Numarul total de angajati
SELECT COUNT(*) AS NUMAR_ANGAJATI FROM ANGAJAT;

-- 6. Numarul total de clienti
SELECT COUNT(*) AS NUMAR_CLIENTI FROM CLIENT;

-- 7. Salariul mediu al angajatilor
SELECT AVG(SALARIU) AS SALARIU_MEDIU FROM ANGAJAT;

-- 8. Cel mai mare salariu
SELECT MAX(SALARIU) AS SALARIU_MAXIM FROM ANGAJAT;

-- 9. Cel mai mic salariu
SELECT MIN(SALARIU) AS SALARIU_MINIM FROM ANGAJAT;

-- 10. Angajatii ordonati descrescator dupa salariu
SELECT * FROM ANGAJAT ORDER BY SALARIU DESC;

-- 11. Clientii ordonati alfabetic dupa nume
SELECT * FROM CLIENT ORDER BY NUME_CLIENT ASC;

-- 12. Selectare angajati angajati in 2022
SELECT * FROM ANGAJAT WHERE EXTRACT(YEAR FROM DATA_ANGAJARE) = 2022;

-- 13. Selectare angajati cu functia 'Manager'
SELECT * FROM ANGAJAT WHERE FUNCTIE = 'Manager';

-- 14. Grupare angajati dupa functie si numarare
SELECT FUNCTIE, COUNT(*) AS NUMAR_ANGAJATI FROM ANGAJAT GROUP BY FUNCTIE;

-- 15. Clientii cu adresa ce contine 'Bulevardul'
SELECT * FROM CLIENT WHERE ADRESA LIKE '%Bulevardul%';

-- 16. Selectare angajati cu salarii intre 2000 si 3000
SELECT * FROM ANGAJAT WHERE SALARIU BETWEEN 2000 AND 3000;

-- 17. Afisare distincta a functiilor din tabelul ANGAJAT
SELECT DISTINCT FUNCTIE FROM ANGAJAT;

-- 18. Clientii cu prenumele 'Ion'
SELECT * FROM CLIENT WHERE PRENUME_CLIENT = 'Ion';

-- 19. Angajatii cu numele de familie 'Popescu'
SELECT * FROM ANGAJAT WHERE NUME = 'Popescu';

-- 20. Selectare angajati si salariile lor
SELECT NUME, PRENUME, SALARIU FROM ANGAJAT;

-- 21. Selectare clienti cu email ce contine 'gmail'
SELECT * FROM CLIENT WHERE EMAIL_CLIENT LIKE '%gmail%';

-- 22. Afisare salarii grupate dupa functie
SELECT FUNCTIE, AVG(SALARIU) AS SALARIU_MEDIU FROM ANGAJAT GROUP BY FUNCTIE;

-- 23. Selectare angajati care nu sunt 'Spalator'
SELECT * FROM ANGAJAT WHERE FUNCTIE != 'Spalator';

-- 24. Numar total de angajati per functie
SELECT FUNCTIE, COUNT(*) FROM ANGAJAT GROUP BY FUNCTIE;

-- 25. Afisare angajati si data angajarii ordonati cronologic
SELECT NUME, PRENUME, DATA_ANGAJARE FROM ANGAJAT ORDER BY DATA_ANGAJARE ASC;
