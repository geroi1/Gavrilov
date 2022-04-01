INSERT INTO `companies` (`id`, `name_company`, `director`, `INN`, `OGRN`, `adress`) VALUES 
('4', 'Gazprom', 'Elizabeth J Reasoner', '400625079284', '2167296795796', '1024 Lincoln Street,  Penns Neck'),
('5', 'Roskosmos', 'Stephen R Martinez', '326502542915', '9105434176124', '1914 Lincoln Street, Princeton');

UPDATE users SET company = 1 WHERE id in(1, 3, 5);
UPDATE users SET company = 2 WHERE id in(2, 4, 6);
UPDATE users SET company = 3 WHERE id in(7, 9, 11);
UPDATE users SET company = 4 WHERE id in(8, 10, 12);
UPDATE users SET company = 5 WHERE id in(13, 14, 15);


ALTER TABLE users MODIFY COLUMN company INT(10);

ALTER TABLE users
ADD CONSTRAINT gender
FOREIGN KEY (gender)
REFERENCES gender(id);

ALTER TABLE users
ADD CONSTRAINT companies
FOREIGN KEY (company)
REFERENCES companies(id);