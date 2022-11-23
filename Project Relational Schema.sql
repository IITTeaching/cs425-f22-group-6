CREATE TABLE account (
  account_id INT PRIMARY KEY,
  type STRING,
  balance INT
);


CREATE TABLE transaction (
  trans_id INT PRIMARY KEY,
  account_id INT
  type STRING,
  amount INT,
  description STRING,
  FOREIGN KEY account_id REFERENCES account
);


CREATE TABLE customer (
  name STRING,
  address STRING,
  branch_id INT,
  account_id INT[], 
  PRIMARY KEY (name, branch_id),
  FOREIGN KEY branch_id REFERENCES branch,
  FOREIGN KEY account_id REFERENCES account
);


CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  address STRING
);


CREATE TABLE employee (
  name NAME,
  branch id INT,
  type STRING,
  address STRING,
  salary INT,
  ssn STRING PRIMARY KEY,
  FOREIGN KEY branch_id REFERENCES branch
);