-- Lessons from Khan's Academy

-- create MyFirstDB database
CREATE DATABASE MyFirstDB;

-- Specify which database to work under
USE MyFirstDB;

-- Creating a table
CREATE TABLE groceryList(
id INTEGER PRIMARY KEY,
name VARCHAR(25),
quantity INTEGER);

-- Adding items to a table
INSERT INTO groceryList VALUES(1, "Bananas", 2);
INSERT INTO groceryList VALUES(2, "Peanut Butter", 1);
INSERT INTO groceryList VALUES(3, "Dark chocolate bars", 2);

SELECT * FROM grocerylist;

-- Create book table listing your favorite books 
-- and insert 3 books into the table
-- Each book will have an ID, title, rating

CREATE TABLE books(
id INTEGER PRIMARY KEY,
title VARCHAR(25),
rating DECIMAL(3, 1));

INSERT INTO books VALUES(1, "Avatar", 10);
INSERT INTO books VALUES(2, "Romeo and Juliet", 1.1);
INSERT INTO books VALUES(3, "Jack and Jill", 2.3);

SELECT * FROM books;

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);

INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

SELECT * FROM movies;

-- select all movies released after year 2000 and order the results list by release year

SELECT * FROM movies
WHERE release_year >= 2000
ORDER BY release_year;

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);

-- Add a todo_list item and then sum all the minutes to complete all items on your list
INSERT INTO todo_list VALUES(4, "Java homework", 60);
SELECT * FROM todo_list;
SELECT SUM(minutes) FROM todo_list;

/* ------------------------------------------------
 *
 * Create your own store! Your store should sell one 
 * type of things, like clothing or bikes, whatever 
 * you want your store to specialize in. You should 
 * have a table for all the items in your store, and 
 * at least 5 columns for the kind of data you think 
 * you'd need to store. You should sell at least 15 
 * items, and use select statements to order your 
 * items by price and show at least one statistic 
 * about the items.
 *
 ------------------------------------------------*/
 
 CREATE TABLE beauty_store(
id INTEGER PRIMARY KEY,
item_name VARCHAR(50),
item_price DOUBLE,
num_in_stock INTEGER,
description TEXT);

INSERT INTO beauty_store VALUES(1, "eyeliner", 3.99, 3, "falsies");
INSERT INTO beauty_store VALUES(2, "nail polish", 8.99, 2, "ballet slippers");
INSERT INTO beauty_store VALUES(3, "sleeping mask", 25, 10, "hydration seal");
INSERT INTO beauty_store VALUES(4, "aloe vera", 8, 2, "soothing");
INSERT INTO beauty_store VALUES(5, "eye cream", 65.90, 4, "no more puffy eyes");

INSERT INTO beauty_store VALUES(6, "emulsion", 12.45, 3, "light moisturizing");
INSERT INTO beauty_store VALUES(7, "cetaphil cream", 10.40, 3, "paraben-free solutions");
INSERT INTO beauty_store VALUES(8, "lip tint", 25, 2, "hint of color");
INSERT INTO beauty_store VALUES(9, "lip mask", 10, 4, "cherry goodness");
INSERT INTO beauty_store VALUES(10, "beauty blend", 15, 2, "flawless blending");

INSERT INTO beauty_store VALUES(11, "bb cream", 21.80, 3, "makeup base");
INSERT INTO beauty_store VALUES(12, "eye drops", 5.60, 2, "clear eyes");
INSERT INTO beauty_store VALUES(13, "essence", 13.90, 2, "refresh yourself");
INSERT INTO beauty_store VALUES(14, "eye shadow", 56, 1, "peachy fresh");
INSERT INTO beauty_store VALUES(15, "primer", 15, 3, "fill fine lines");

SELECT * FROM beauty_store 
ORDER BY item_price;

SELECT item_name, num_in_stock 
FROM beauty_store 
WHERE num_in_stock < 3;

SELECT sum(num_in_stock) FROM beauty_store;

-- auto-increment primary key ID
DROP TABLE groceryList; /* delete groceryList table before recreating */

CREATE TABLE groceryList(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(25),
quantity INTEGER);

INSERT INTO grocerylist (name, quantity) VALUES("Bananas", 3);
INSERT INTO grocerylist (name, quantity) VALUES("Peanut Butter", 1);
INSERT INTO grocerylist (name, quantity) VALUES("Dark chcocolate bars", 2);










 





















