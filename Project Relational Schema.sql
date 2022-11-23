CREATE TABLE account (
  account_id INT PRIMARY KEY,
  type VARCHAR,
  balance INT
);


CREATE TABLE transaction (
  trans_id INT PRIMARY KEY,
  account_id INT
  type VARCHAR,
  amount INT,
  description VARCHAR,
  FOREIGN KEY account_id REFERENCES account
);


CREATE TABLE customer (
  name VARCHAR,
  address VARCHAR,
  branch_id INT,
  account_id INT[], 
  PRIMARY KEY (name, branch_id),
  FOREIGN KEY branch_id REFERENCES branch,
  FOREIGN KEY account_id REFERENCES account
);


CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  address VARCHAR
);


CREATE TABLE employee (
  name VARCHAR,
  branch_id INT,
  type VARCHAR,
  address VARCHAR,
  salary INT,
  ssn STRING PRIMARY KEY,
  FOREIGN KEY branch_id REFERENCES branch
);
