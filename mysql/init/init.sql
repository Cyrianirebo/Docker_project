USE mydatabase;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT
);

INSERT INTO users (name, email, age) VALUES
('John Doe', 'john.doe@example.com', 28),
('Jane Smith', 'jane.smith@example.com', 32),
('Alice Johnson', 'alice.johnson@example.com', 24);
