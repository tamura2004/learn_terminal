create table country (
  country_id integer primary key autoincrement,
  country_name varchar(255) not null unique
);

create table city (
  country_id integer not null,
  city_id integer not null,
  city_name varchar(255) not null,
  primary key(country_id, city_id)
);

create table customer (
  customer_id integer primary key,
  customer_name varchar(255) not null
);

create table attraction (
  attraction_id integer primary key,
  attraction_name varchar(255) not null,
  country_id integer,
  city_id integer,
  category_id integer
);

create table category (
  category_id primary key,
  category_name varchar(255)
);
