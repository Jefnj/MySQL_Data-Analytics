-- READ DATA--
SELECT * from cars.car_dekho;


-- Question:  Total cars: To get a count of total records--
select count(*) as Total_Cars from cars.car_dekho;


-- Question:  The manager asked the employee,How many cars will be available in 2023?--
select count(*) as Cars_available_in_2023 from cars.car_dekho where year =2023;


-- Question:  The manager asked the employee how many cars will be available there in 2020,2021,2022--
select count(*) as Cars_available_in_2020 from cars.car_dekho where year=2020;
select count(*) as Cars_available_in_2021 from cars.car_dekho where year=2021;
select count(*) as Cars_available_in_2022 from cars.car_dekho where year=2022;
select year as Year,count(*) as Cars_available_from_2020_to_2022 from cars.car_dekho where year in(2020,2021,2022) group by year;


-- Question:  Client asked me to print the total of all cars by year ,I dont see all the details.--
select  year as Year,count(*) as Cars from cars.car_dekho group by year order by Cars desc;


-- Question:  Client asked car dealer agent,How many diesel cars will be there in 2020?--
select count(*) as Diesel_Cars_available_in_2020 from cars.car_dekho where fuel= "Diesel" and year=2020;


-- Question: Client requested a car dealer agent,How many petrol cars will be there in 2020?--
select count(*) as Petrol_Cars_available_in_2020 from cars.car_dekho where fuel="Petrol" and year=2020;


-- Question: The manager told the employee to give a print of all the fuel cars (Petrol,Diesel and CNG) come by all year--
select year as Year,count(*) as No_of_Petrol_Vehicles from cars.car_dekho where fuel="Petrol" group by Year order by No_of_Petrol_Vehicles desc;
select year as Year,count(*) as No_of_Diesel_Vehicles from cars.car_dekho where fuel="Diesel" group by Year order by No_of_Diesel_Vehicles desc;
select year as Year,count(*) as No_of_CNG_Vehicles from cars.car_dekho where fuel="CNG" group by year order by No_of_CNG_Vehicles desc;


-- Question: Manager said there were more than  100 cars in a given year,which year had more than 100 cars?--
select year as Years_that_are_having_vehicle_counts_greater_than_100,count(*) as Vehicle_Count from cars.car_dekho group by Year having count(*)>100;


-- The manager said to the employee All cars count details between 2015 and 2023;we need a complete list--
select count(*) as Car_count_between_2015_and_2023 from cars.car_dekho where year between 2015 and 2023;


-- The manager said to the employee All cars details between 2015 to 2023 we need complete list--
select * from cars.car_dekho where year between 2015 and 2023 order by year asc;

                                       -- END ---
                                       
