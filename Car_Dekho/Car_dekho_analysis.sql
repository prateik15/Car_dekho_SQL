SELECT * FROM car_dekho.car_dekho;

-- to get total records
select count(name) from car_dekho.car_dekho;

-- how many cars will be available in 2023
select count(*) from car_dekho.car_dekho where year = 2023;

-- how many cars will be available in 2020,2021,2022
select year, count(*) as Total_count from car_dekho.car_dekho where year in (2020,2021,2022) group by year;

-- count total of all cars by year
select year,count(*) from car_dekho.car_dekho group by year;

-- how many diesel cars in 2020
select count(*) from car_dekho.car_dekho where year = 2020 and fuel = "Diesel";

-- how many petrol cars in 2020
select count(*) from car_dekho.car_dekho where year = 2020 and fuel = "petrol";

-- print all fuel car (petrol, diesel and CNG) come by all year
select year, count(*) as Petrol_count from car_dekho.car_dekho where fuel = "petrol" group by year;
select year, count(*) as Diesel_count from car_dekho.car_dekho where fuel = "diesel" group by year;
select year, count(*) as CNG_count from car_dekho.car_dekho where fuel = "CNG" group by year;

-- which year has more than 100 cars
select year,count(*) as Total_Count from car_dekho.car_dekho group by year having count(year) >100;

-- all car count between 2015 to 2023
select year, count(*) from car_dekho.car_dekho where year in (2015,2016,2017,2018,2019,2020,2021,2022,2023) group by year;
select year,count(*) from car_dekho.car_dekho where year between 2015 and 2023 group by year;

-- all cars details between 2015 to 2023
select * from car_dekho.car_dekho where year between 2015 and 2023;

