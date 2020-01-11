drop table birth_dates

create table birth_dates(
	Country varchar,
	Countrycode varchar,
	Year numeric,
	BirthRate decimal);

select * from birth_dates;

create table currency(
	Currency varchar,
	Date numeric,
	Rate decimal);
	
select * from currency;

create table food_production(
	Country varchar,
	Countrycode varchar,
	Year numeric,
	FoodProduction decimal);
	
select * from food_production;

create table currencies(
	Currency varchar,
	Country varchar,
	Country_Code varchar);

select * from currencies;