ALTER TABLE users ADD(
gender varchar(6),
email VARCHAR(100) UNIQUE,
company VARCHAR(100),
job VARCHAR(100),
street VARCHAR(50),
city VARCHAR(50),
telephone INT(15) UNIQUE);





ALTER TABLE users
ADD CONSTRAINT UNIQUE (name, surname, patronymic, birth_day, street, city);

INSERT INTO users (name, surname, patronymic, birth_day, email, company, job, street, city, gender, telephone) VALUES
('Gladys','B','Currey','1984-04-05','moises2009@yahoo.com','Alpha Beta','Neurodiagnostic Technologist','4461 Coulter Lane','Richmond','female','8043326466'),
('Flora','F','Brown','1960-07-11','marcel.ankundi@hotmail.com','Beefsteak Charlie','Psychiatric Technician','2602 Rose Avenue','Kenner','female','5043132023'),
('Joseph','C','McCrary','1953-07-12','kaleb_bland2@yahoo.com','Strategy Consulting','Art Director','4677 Walnut Hill Drive','Cincinnati','male','513-256-1880'),
('Leo','H','Malone','1973-04-12','judd.stiedema@gmail.com','Frank and Seder','Financial Clerk, All Other','4659 Cherry Tree Drive','Jacksonville','male','9043068535'),
('Eunice','K','Tulley','1957-05-19','ashly_goyet@gmail.com','Mr. D','Recycling and Reclamation Worker','38 North Bend River Road','Lexington','female','6068260781'),
('Dana','D','Harden','1964-05-07','edmund_davi1@hotmail.com','Gino','Police Detective','648 Perry Street',' Burton','female','8107437113'),
('Wade','L','Weber','1952-02-12','ivory1983@yahoo.com','Ulbrich','Marine Engineer','651 Peaceful Lane',' Beachwood','male','2164889205'),
('Mary','M','Montalvo','1968-11-19','dorothea.macgyv@hotmail.com','Cut Rite','Education Administrator, All Other','4017 Hickory Street','West Valley City','female','8017772770'),
('Brian','A','Harris','1986-03-18','zackary1987@hotmail.com','Vibrant Man','Refractory Materials Repairer, Except Brickmason','2976 Oak Ridge Drive','Stlouis','male','5735790190'),
('Della','R','Gore','1994-04-11','sidney_watsi@gmail.com','Sports Unlimited','Police Detective','4298 Cambridge Place','Baltimore','female','4105375394'),
('Charles','S','Hensley','1983-08-15','christina.roh@gmail.com','Express Merchant Service','Precision Agriculture Technician','3854 Owen Lane',' Grand Rapids','male','2318990469'),
('David','A','Dowler','1975-09-07','nia1990@hotmail.com','ManCharm','Drilling and Boring Machine Tool Setter, Operator, and Tender, Metal and Plastic','2525 Lost Creek Road','Reading','male','6109880906'),
('Israel','K','Wetherell','1971-06-26','maverick2007@gmail.com','Sam Goody','Network and Computer Systems Administrator','1053 Oak Drive','Albany','male','5186253111'),
('Tabitha','P','Richmond','1982-09-24','gayle_romague@hotmail.com','Sampson','Embalmer','2993 Lakeland Terrace','Southfield','female','7343196063'),
('Florence','B','Cutshall','1997-04-01','rosalyn1990@yahoo.com','Warshal','First-Line Supervisors of Farming, Fishing, and Forestry Worker','2202 Prospect Valley Road','Irvine','female','3109876338');