select left('Baze podataka',4);
--+-------------------------+
--| left('Baze podataka',4) |
--+-------------------------+
--| Baze                    |
--+-------------------------+

select length('Baze podataka');
--+-------------------------+
--| length('Baze podataka') |
--+-------------------------+
--|                      13 |
--+-------------------------+

select lower('BAZE podataka');
--+------------------------+
--| lower('BAZE podataka') |
--+------------------------+
--| baze podataka          |
--+------------------------+

select ltrim('    Baze podataka');
--+----------------------------+
--| ltrim('    Baze podataka') |
--+----------------------------+
--| Baze podataka              |
--+----------------------------+

select replace('Borg borgira borgijom','borg','zork');
--+------------------------------------------------+
--| replace('Borg borgira borgijom','borg','zork') |
--+------------------------------------------------+
--| Borg zorkira zorkijom                          |
--+------------------------------------------------+

select repeat('baze',2);
--+------------------+
--| repeat('baze',2) |
--+------------------+
--| bazebaze         |
--+------------------+

select reverse ('Baze');
--+------------------+
--| reverse ('Baze') |
--+------------------+
--| ezaB             |
--+------------------+

select right('Baze podataka',5);
--+--------------------------+
--| right('Baze podataka',5) |
--+--------------------------+
--| ataka                    |
--+--------------------------+

select rtrim('Baze podataka    ');
--+----------------------------+
--| rtrim('Baze podataka    ') |
--+----------------------------+
--| Baze podataka              |
--+----------------------------+

select substring('Baze podataka',6,7);
--+--------------------------------+
--| substring('Baze podataka',6,7) |
--+--------------------------------+
--| podatak                        |
--+--------------------------------+

select upper('BAZE podataka');
--+------------------------+
--| upper('BAZE podataka') |
--+------------------------+
--| BAZE PODATAKA          |
--+------------------------+

