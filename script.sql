CREATE DATABASE  company ;


CREATE TABLE User (
    id int PRIMARY KEY,
    first_name  VARCHAR(40),
    last_name VARCHAR (40),
    email VARCHAR (40),
    PASSWORD varchar(20),
    phone int , 
    budget FLOAT ,
    category_id int ,
    FOREIGN KEY (category_id) REFERENCES Category(id),


);

CREATE TABLE Category (
    id int PRIMARY KEY ,
    name varchar(30),
    description VARCHAR(100),
    budget  varchar (40),
    percentage  VARCHAR(30),
);

CREATE TABLE company(
    id int PRIMARY KEY,
    name  VARCHAR (30),
    description VARCHAR(100),
    code varchar(40),
    size int,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(id);
);

CREATE TABLE Role (
    id int PRIMARY KEY ,
    name VARCHAR (30),
);


CREATE TABLE Permission (
    id int PRIMARY KEY ,
    name VARCHAR (30)
);

CREATE TABLE Operation (
    id int PRIMARY KEY , 
    price FLOAT ,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES User(id)
);


CREATE TABLE user_roles(
    user_id int ,
    role_id int ,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (role_id) REFERENCES Role(id)
);

CREATE TABLE user_permisions(
    user_id int,
    Permission_id INT ,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (Permission_id) REFERENCES Permission(id)
);


INSERT INTO User(first_name , last_name , email , PASSWORD , phone , budget , category_id)
VALUE
('mohamed','acharouaou','acharouaou@gmail.com','heorjzfoifh',0858334489,2486,1),
('ahemd','ayman','ahmed@gmail.com','hslfios',085233389,2446,2);

INSERT INTO Category (name , description , budget , percentage , company_id)
VALUE 
('mohamed','hello i am mohamed ', 123,342,1),
('ahmed','hello i am ahmed ', 234,34,2),
('ali','hello i am ali ', 535,56,3);

INSERT INTO Role (name)
VALUE
(admin),
(moderator),
(updating),
(deletion);


select  company.name , company.code
FROM company
INNER JOIN Category ON company.category_id = Category.id;

select User.first_name , User.last_name , User.budget
FROM User
INNER JOIN Category ON User.category_id = Category.id ;



