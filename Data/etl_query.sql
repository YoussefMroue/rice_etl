drop table birth_rates;
drop table currencies;
drop table currency;
drop table food_production;

create table currencies(
	id serial primary key,
	Currency varchar unique,
	Country varchar unique,
	Country_Code varchar unique);
create table birth_rates(
	id serial primary key,
	Countrycode varchar references currencies(country_code),
	Country varchar,
	Year int,
	BirthRate float);
create table currency(
	id serial primary key,
	Currency varchar references currencies(currency),
	Date int,
	Rate float);
create table food_production(
	id serial primary key,
	Country varchar references currencies(country),
	Countrycode varchar,
	Year int,
	FoodProduction float);