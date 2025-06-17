CREATE TABLE books (
  book_id INT PRIMARY KEY,
  title VARCHAR(50),
  author VARCHAR(50)
);

CREATE TABLE members (
  member_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE borrow (
  borrow_id INT PRIMARY KEY,
  member_id INT,
  book_id INT
);
