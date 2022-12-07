CREATE TABLE account ( 
  account_id INT PRIMARY KEY,  
  acc_type VARCHAR,  
  balance NUMERIC 
);

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  address VARCHAR
);

CREATE TABLE transaction (
  trans_id INT PRIMARY KEY,
  account_id INT,
  trans_type VARCHAR,
  amount NUMERIC,
  date DATE,
  description VARCHAR,
  FOREIGN KEY (account_id) REFERENCES account
);

CREATE TABLE customer (
  name VARCHAR,
  address VARCHAR,
  branch_id INT,
  PRIMARY KEY (name, branch_id),
  FOREIGN KEY (branch_id) REFERENCES branch
);

CREATE TABLE customer_account (
  name VARCHAR,
  address VARCHAR,
  branch_id INT,
  account_id INT,
  PRIMARY KEY (name, branch_id, account_id),
  FOREIGN KEY (name, branch_id) REFERENCES customer,
  FOREIGN KEY (account_id) REFERENCES account
);


CREATE TABLE employee (
  name VARCHAR,
  branch_id INT,
  emp_type VARCHAR,
  address VARCHAR,
  salary INT,
  ssn INT PRIMARY KEY,
  FOREIGN KEY (branch_id) REFERENCES branch
);
