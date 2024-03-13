DROP TABLE IF EXISTS urls;
DROP TABLE IF EXISTS url_checks;

CREATE TABLE urls (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP
);

CREATE TABLE url_checks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    url_id INTEGER REFERENCES urls (id),
    status_code INTEGER,
    h1 VARCHAR(255),
    title VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP
);