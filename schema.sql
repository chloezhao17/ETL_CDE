DROP TABLE location;
DROP TABLE scores;
CREATE TABLE location (
id SERIAL PRIMARY KEY,
name TEXT,
address TEXT,
lat FLOAT,
lng FLOAT
);
CREATE TABLE scores (
id SERIAL PRIMARY KEY,
walkscore INT,
"ws description" TEXT,
bike INT,
"b description" TEXT,
address TEXT
);
