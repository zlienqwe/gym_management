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
INSERT INTO Employee VALUE(2, 'zhaolele', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(3, 'aa', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(4, 'cc', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(5, 'vv', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(6, 'bb', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(7, 'qw', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(8, 'ff', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(9, 'vf', 'coach', 'female', 'zhaolele@gmail.com', 23);
INSERT INTO Employee VALUE(10, 'jh', 'coach', 'female', 'zhaolele@gmail.com', 23);
