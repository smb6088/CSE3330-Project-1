
/*SELECT STATEMENT FOR QUERY 2 */

SELECT DISTINCT Train_Name FROM Train t,Passenger p,Booked b 
WHERE Passenger_ssn = SSN AND b.Train_Number = t.Train_Number AND Status like '%Booked%'
AND first_name like '%James%' AND last_name like '%Butt%';


/*SELECT STATEMENT FOR QUERY 3 */


SELECT DISTINCT first_name, last_name FROM Passenger p, Train t, Booked b 
WHERE Available_on like '%Friday%' AND t.Train_Number = b.Train_Number AND Status = 'Booked' AND Passenger_ssn = SSN;



/*SELECT STATEMENT FOR QUERY 4 */

select distinct t.Train_Number, t.Train_Name, t.Source_Station, t.Destination, p.first_name, p.last_name, p.address, b.Status 
from Train as t, Passenger as p, booked as b 
where p.SSN = b.Passenger_ssn and b.Train_Number = t.Train_Number and p.bdate 
between date('now','-60 years') and date('now','-50 years');


/*SELECT STATEMENT FOR QUERY 5 */

SELECT Train_name, Available_on, COUNT(*) 
FROM Train t, Booked b 
WHERE t.Train_Number = b.Train_Number 
GROUP BY Train_Name, Available_on;

/*SELECT STATEMENT FOR QUERY 6 */

SELECT DISTINCT first_name, last_name 
FROM Passenger, Train, Booked 
WHERE Train.Train_Number = Booked.Train_Number AND Passenger_ssn = SSN AND Status like '%Booked%' AND Train_Name like '%Golden Chariot%';


/*SELECT STATEMENT FOR QUERY 7 */

SELECT DISTINCT first_name, last_name, Train_Name FROM Passenger p, Booked b, Train t 
WHERE b.Train_Number = t.Train_Number AND Passenger_ssn = SSN AND Status = 'WaitL';

/*SELECT STATEMENT FOR QUERY 8 */

SELECT first_name, last_name FROM Passenger 
WHERE phone2 like '605%'
ORDER BY first_name DESC;
 
/*SELECT STATEMENT FOR QUERY 9 */

select distinct first_name, last_name from passenger as p, booked as b, train as t 
where p.SSN = b.Passenger_ssn and b.Train_Number = t.Train_Number and t.Available_on like '%Thursday%' 
order by p.first_name asc;