-- displaying all the data in the rental table
select * from rental;
-- joinning the data in the rental table to payment table
select rental.rental_id, rental.rental_date, rental.inventory_id, payment.amount, payment.payment_date
from rental
inner join payment on payment.payment_id = rental.rental_id
group by payment_id;
-- displaying only the first 5 data
select rental.rental_id, rental.rental_date, rental.inventory_id, payment.amount, payment.payment_date
from rental
inner join payment on payment.payment_id = rental.rental_id
group by payment_id
limit 5;
-- displaying the payment tabble
select * from payment;
-- displaying rental amount greater tha 1
select * from payment
where amount > 1; 