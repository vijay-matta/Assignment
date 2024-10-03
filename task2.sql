--TASK 2--

--1. List all customers
     select * from Users

--2. List all orders for a specific customer
     select * from Courier where UserId = 100001

--3. List all couriers
     select * from Courier

--4. List all packages for a specific order
     select * from Packages where CourierId =2

--5. List all deliveries for a specific courier (Does this question same as Q4)
     select * from Courier where UserId=100001

--6. List all undelivered packages
     select * from Courier where Status != 'Delivered'

--7. List all packages that are scheduled for delivery today
     select * from Courier where DeliveryDate= GETDATE()

--8. List all packages with a specific status
     select * from Courier where Status = 'Delivered'

--9. Calculate the total number of packages for each courier
     select  CourierId, count(CourierId) as 'TotalNoOfPackages' from Packages group by CourierId
	 select * from Packages

--10. Find the average delivery time for each courier
      
	  select * from Courier
	  select * from Payment

	  select CourierId ,datediff( DAY, PaymentDate,DeliveryDate) as AverageTime from Courier group by CourierId, DeliveryDate,PaymentDate

--11. List all packages with a specific weight range
      select CourierId, SenderName, ReceiverName, weight from Courier where weight> =5 and Weight<=10

	  select CourierId, SenderName, ReceiverName, count(CASE WHEN Weight BETWEEN 0 AND 5 THEN 1 END ) as Weights from Courier group by CourierId, SenderName, ReceiverName

--12. Retrieve employees whose names contain 'John' 
      select * from Employee where Name like 'John%'
	 
--13. Retrieve all courier records with payments greater than $50
      select * from Payment
	  select * from Payment where Amount > 50 order by Amount

--
