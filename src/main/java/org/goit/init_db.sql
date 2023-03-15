CREATE TABLE worker (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(1000) NOT NULL,
    birthday DATE NOT NULL CHECK (birthday >= '1901-01-01'),
    level VARCHAR(10) NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    salary INT NOT NULL CHECK (salary >= 100 AND salary <= 100000)
);

CREATE TABLE client (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(1000) NOT NULL
);

CREATE TABLE project (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    start_date DATE NOT NULL,
    finish_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES client(id)
);

CREATE TABLE project_worker (
    project_id INT NOT NULL,
    worker_id INT NOT NULL,
    PRIMARY KEY (project_id, worker_id),
    FOREIGN KEY (project_id) REFERENCES project(id),
    FOREIGN KEY (worker_id) REFERENCES worker(id)
);