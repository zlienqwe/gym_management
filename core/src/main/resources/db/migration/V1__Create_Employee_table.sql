USE gym_management_system;

CREATE TABLE EMPLOYEE
(
  Id INT AUTO_INCREMENT primary key,
  Name VARCHAR(50) NOT NULL,
  Role VARCHAR(10) NOT NULL,
  Gender VARCHAR(10) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  Age INT NOT NULL
);
INSERT INTO Employee VALUE(1, 'zhujiang', 'coach', 'male', 'zhu202390@gmail.com', 22);
