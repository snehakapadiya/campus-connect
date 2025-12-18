CREATE DATABASE clubs_database;
USE clubs_database;

CREATE TABLE  clubs (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    president VARCHAR(100),
    vice_president VARCHAR(100),
    contact_email VARCHAR(100),
);

INSERT INTO clubs (id, name, description, president, vice_president, contact_email) VALUES
(1, 'Art Club', 'A club for art enthusiasts to share and create art.', 'Alice Smith', 'Bob Johnson'),
(2, 'Robotics Club', 'A club focused on building and programming robots.', 'Charlie Brown', 'Diana Prince'),
(3, 'Drama Club', 'A club for students interested in theater and acting.', 'Eve Adams', 'Frank Miller');

CREATE TABLE members (
    id INT PRIMARY KEY,
    club_id INT,
    member_name VARCHAR(100) NOT NULL,
    member_email VARCHAR(100) NOT NULL,
    FOREIGN KEY (club_id) REFERENCES clubs(id)
);

insert INTO members (id, club_id, member_name, member_email) VALUES
(1, 1, 'Grace Hopper', 'grace@gmail.com'),
(2, 1, 'Hedy Lamarr', 'hedy@gmail.com'),
(3, 2, 'Isaac Newton', 'isac'),
(4, 2, 'Jane Goodall'),
(5, 3, 'Kurt Vonnegut'),
(6, 3, 'Lena Dunham');

CREATE TABLE events (
    id INT PRIMARY KEY,
    club_id INT,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE,
    event_description TEXT,
    FOREIGN KEY (club_id) REFERENCES clubs(id)
);

