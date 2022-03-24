CREATE TABLE gender (
id TINYINT(1) PRIMARY KEY AUTO_INCREMENT,
rus VARCHAR(10) NOT NULL,
eng VARCHAR(10) NOT NULL
);

CREATE TABLE companies (
id INT(10) PRIMARY KEY AUTO_INCREMENT, 
name_company VARCHAR(100),
director VARCHAR(100),
INN VARCHAR(35) UNIQUE,
OGRN VARCHAR(30) UNIQUE,
adress VARCHAR(120)
);

CREATE TABLE cities 
(id INT(10) PRIMARY KEY AUTO_INCREMENT,
name_city VARCHAR(30)
);

INSERT INTO gender (id,rus, eng) values
('1','Мужcкой', 'male'),
('2','Женский', 'female');

INSERT INTO companies (name_company,director,INN,OGRN,adress) VALUES 
('Digitalworld', 'Roberta P Trowbridge', '908330620308', '6018372965066', '4205 Byrd Lane Albuquerque'),
('Virtualpiece', 'Timothy G Stanley', '431406598778', '2152284911634', '2682 Thunder Road San Jose'), 
('Skyct', 'Junior C Negri', '7564260656803', '6018372965066', '3955 Stratford Drive Honolulu');

INSERT INTO cities (name_city) VALUES
('Tomsk'), ('Krasnoyarsk'), ('Moscow');