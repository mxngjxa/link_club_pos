/* schema for the tapa database */

CREATE TABLE IF NOT EXISTS buyer (
	index SERIAL UNIQUE NOT NULL,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	card INT UNIQUE,
	PRIMARY KEY (index));

-- CREATE TABLE IF NOT EXISTS admin (
-- 	index SERIAL UNIQUE NOT NULL,
-- 	bennington_id INT UNIQUE NOT NULL,
-- 	super_admin BOOLEAN,
-- 	PRIMARY KEY (bennington_id));

CREATE TABLE IF NOT EXISTS item (
	index SERIAL UNIQUE NOT NULL,
	tag INT[] UNIQUE,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NULL,
	cost MONEY NOT NULL,
	date_added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	sale_index INT,
	PRIMARY KEY (index));

-- What if an tag is reused? Or perhaps an item is returned?

CREATE TABLE IF NOT EXISTS stock (
	index SERIAL UNIQUE NOT NULL,
	item_index INT UNIQUE NOT NULL,
	PRIMARY KEY (index));

CREATE TABLE IF NOT EXISTS sale (
	index SERIAL UNIQUE NOT NULL,
	card INT NOT NULL,
	date_added TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	date_paid TIMESTAMP,
	PRIMARY KEY (index));
