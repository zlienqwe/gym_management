USE gym_management_system;


CREATE TABLE USER
(
  Id INT AUTO_INCREMENT primary key,
  Name VARCHAR(50) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  EmployeeId INT,
  FOREIGN KEY (EmployeeId) REFERENCES EMPLOYEE(Id)
);
INSERT INTO USER VALUE(1,'admin','202CB962AC59075B964B07152D234B70',1);
INSERT INTO USER VALUE(2,'Zhaolele','202CB962AC59075B964B07152D234B70',2);
grant all privileges on *.* to 'root'@'%' with grant option;
flush privileges;

