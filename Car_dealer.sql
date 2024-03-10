create schema cars;
use cars;

-- Q1.Read Dataset--
select * from car_dekho;

-- Q2.Total Cars:to get the count of total records--
select count(*) from car_dekho;

-- Q3.The manager asked the employee how many cars will be available in 2023? `--
select count(*) from car_dekho where year=2023;

-- Q4.The manager asked the employee how many cars will be available in 2020,2021,2022? --
select count(*) from car_dekho where year=2020; #74
select count(*) from car_dekho where year=2021; #7
select count(*) from car_dekho where year=2022; #7
-- Group by --
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- Q5.Client asked me to print the total of all cars by year. i dont see all the details. --
select year,count(*) from car_dekho group by year;

-- Q6.Client asked to car dealer agent how many diesel cars will be there in 2020? --
select count(*) from car_dekho where year=2020 and fuel="Diesel";

-- Q7.Client asked to car dealer agent how many Petrol cars will be there in 2020? --
select count(*) from car_dekho where year=2020 and fuel="Petrol";

-- Q8.The manager told the employye to give a print all the fuel cars(petrol,diesel and cng)come by all year --
select year,count(*) from car_dekho where fuel="Petrol" group by year;
select year,count(*) from car_dekho where fuel="Diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;

-- Q9.Manager said there were more than 100 cars in given year,which year had more than 100 cars --
select year,count(*) from car_dekho  group by year having count(*)>100;

-- Q10.The manager said the employye to print all cars count details between 2015 to 2023 we need complete list --
select count(*) from car_dekho where year between 2015 and 2023; 

-- Q11.The manager said the employye to print all cars details between 2015 to 2023 we need complete list --
select * from car_dekho where year between 2015 and 2023 order by year asc; 

-- End --








