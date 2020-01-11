drop table birth_dates
drop table currencies
drop table currency
drop table food_production


create table birth_dates(
	Countrycode varchar references currencies(country_code),
	Country varchar,
	Year numeric,
	BirthRate decimal);

select * from birth_dates;

create table currencies(
	Currency varchar unique,
	Country varchar unique,
	Country_Code varchar unique);

select * from currencies;
	
create table currency(
	Currency varchar references currencies(currency),
	Date numeric,
	Rate decimal);
	
select * from currency;

create table food_production(
	Country varchar references currencies(country),
	Countrycode varchar,
	Year numeric,
	FoodProduction decimal);
	
select * from food_production;

SELECT birth_dates.country,birth_dates.year,birth_dates.birthrate,food_production.foodproduction,currencies.currency,currency.rate
FROM currencies
LEFT JOIN currency
ON currency.currency = currencies.currency
LEFT JOIN birth_dates
ON currencies.country = birth_dates.country
LEFT JOIN food_production
ON currencies.country = food_production.country
WHERE currencies.country_code = 'ARE'
