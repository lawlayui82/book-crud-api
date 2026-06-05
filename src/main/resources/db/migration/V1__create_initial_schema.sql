CREATE TABLE books (
    id int AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) NOT NULl,
    description varchar(255),
    author varchar(255),
    price decimal NOT NULL,
    stock int,
    year int,
    created_at datetime NOT NULL,
    update_at datetime
)