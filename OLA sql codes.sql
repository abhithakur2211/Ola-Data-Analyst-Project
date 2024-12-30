create database OLA
select  * from bookings

1. Retrieve all successful bookings:
select * from bookings where booking_status = 'Success'; 

2. Find the average ride distance for each vehicle type:
select vehicle_type,avg(ride_distance) as avg_ride_dist from bookings
group by vehicle_type; 

3. Get the total number of cancelled rides by customers:
select count(*) from bookings where booking_status = 'Canceled by Customer';

4. List the top 5 customers who booked the highest number of rides:
select customer_id,count(booking_id) as booked_orders from bookings where booking_status = 'Successs'
group by customer_id
order by booked_orders desc limit 5;

5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from bookings where Canceled_rides_by_driver  = 'Personal & Car related issue';

6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select Max(driver_ratings) as max_driver_rating, Min(driver_ratings) as min_driver_rating from bookings
where vehicle_type = 'Prime Sedan';

7. Retrieve all rides where payment was made using UPI:
select * from bookings where payment_method = 'UPI';

8. Find the average customer rating per vehicle type:
select vehicle_type,avg(customer_rating) as avg_cust_rating from bookings
group by vehicle_type;

9. Calculate the total booking value of rides completed successfully:
select sum(booking_value) as total from bookings
where booking_status ='Success';

10. List all incomplete rides along with the reason:
select booking_id,Incomplete_Rides_Reason from bookings 
where Incomplete_rides = 'Yes';
