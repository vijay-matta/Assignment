use CourierManagementSystem
--TASK 4--

--23. Retrieve Payments with Courier Information 
      select * from Courier
	  select * from Payment
	  select c.CourierId, SenderName,SenderAddress, Weight, TrackingNumber, DeliveryDate, PaymentID, Amount,PaymentDate  from Courier c join Payment p on p.CourierId = c.CourierId 


--24. Retrieve Payments with Location Information 
      select * from Payment
	  select * from Location
	  select PaymentID, Amount, PaymentDate,LocationName,Address, p.LocationID from Payment p join Location l on p.LocationID = l.LocationID 


--25. Retrieve Payments with Courier and Location Information 
      select * from Courier
	  select * from Payment
	  select * from Location

	  select PaymentID, Amount, PaymentDate, CourierID, LocationName,Address, p.LocationID from Payment p join Location l on p.LocationID = l.LocationID 


--26. List all payments with courier details 
      select c.CourierId,SenderName,SenderAddress, ReceiverName, ReceiverName, Weight, Status, TrackingNumber, DeliveryDate, PaymentID, Amount, PaymentDate from Courier c join Payment p on c.CourierId = p.CourierID

--27. Total payments received for each courier 
      select * from Courier
	  select * from Payment

	  select CourierId , sum(Amount) as TotalPaymentForEach from Payment group by CourierID


--28. List payments made on a specific date 
      select PaymentId, Amount from Payment where PaymentDate = '2023-09-25'

--29. Get Courier Information for Each Payment 
      select c.CourierId,SenderName,SenderAddress, ReceiverName, ReceiverName, Weight, Status, TrackingNumber, DeliveryDate, PaymentID, Amount, PaymentDate from Courier c join Payment p on c.CourierId = p.CourierID

--30. Get Payment Details with Location 
      select PaymentID, Amount, PaymentDate,LocationName,Address, p.LocationID from Payment p join Location l on p.LocationID = l.LocationID
      
--31. Calculating Total Payments for Each Courier 
      select * from Payment
	  select CourierId, PaymentId, PaymentDate, sum(Amount) as TotalPayements from Payment group by CourierID, PaymentId, PaymentDate
	  

--32. List Payments Within a Date Range 
      select PaymentId , PaymentDate, Amount from Payment where PaymentDate between '2023-09-22'  and '2023-09-30'

--33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side 
      select * from Users
	  select * from Courier

	  select u.UserId, u.Name, CourierId, Weight, TrackingNumber  from Users u join Courier c on u.UserId = c.UserId

--34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side 
      select * from CourierServices
	  select * from Courier
	  
	  select c.courierid, s.servicename from courier c
      full outer join courierservicesmapping m on c.courierid = m.courierid
      full outer join courierservices s on m.serviceid = s.serviceid




--35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side 
      select * from Employee
	 
	  select e.Name, e.Email, e.salary FROM Employee e
      

       
--36. List all users and all courier services, showing all possible combinations. 
      select Name, Email, ServiceID, ServiceName, Cost from Users  cross join CourierServices
      
--37. List all employees and all locations, showing all possible combinations: 
      select * from Employee
	  select * from Location

	  select EmployeeId, Name, Email, ContactNumber, Role, LocationName, Address from Employee cross join Location

--38. Retrieve a list of couriers and their corresponding sender information (if available) 
      select CourierId, u.UserId,Name, Email, ContactNo, Address from Users u join Courier c on u.UserId = c.UserId


--39**. Retrieve a list of couriers and their corresponding receiver information (if available): 
      select CourierId, u.UserId,Name, Email, ContactNo, u.Address, c.ReceiverAddress from Users u join Courier c on u.Address = c.ReceiverAddress
	  


--40. Retrieve a list of couriers along with the courier service details (if available): 
      select c.courierid,s.ServiceName,s.Cost from Courier c 
	  full outer join courierservicesmapping m on c.courierid = m.courierid
      full outer join courierservices s on m.serviceid = s.serviceid

--41. Retrieve a list of employees and the number of couriers assigned to each employee: 
      select * from Employee
	  select * from Courier

	  select e.EmployeeId, e.Name, count(CourierId) as TotalCouriers from Employee e join Courier c on e.EmployeeId= c.EmployeeId group by e.EmployeeId, e.Name


--42. Retrieve a list of locations and the total payment amount received at each location: 
      select * from Location
	  select * from Payment

	  select LocationId , sum(Amount) as TotalPayment from Payment group by LocationID
      


--43. Retrieve all couriers sent by the same sender (based on SenderName). 
      select * from Courier

	  select CourierId , SenderName from Courier where SenderName ='John Doe'


--44. List all employees who share the same role. 
      select * from Employee
	  select * from Employee where Role = 'Courier'

--45. Retrieve all payments made for couriers sent from the same location. 
      select * from Payment
	  select * from Location
	  
	  select l.LocationID,LocationName, PaymentID, Amount, PaymentDate from Location l join Payment p on l.LocationID = p.LocationID where l.LocationID =1
	  
	 
--46. Retrieve all couriers sent from the same location (based on SenderAddress). 
      select * from Location
	  select * from Courier

	  select CourierId from Courier where SenderAddress like '123 Main St, City A'

	  select c.CourierId , l.LocationID from Courier c join Location l on c.SenderAddress = l.Address where l.Address = '123 Street, City A' group by c.CourierId, l.LocationID 


--47. List employees and the number of couriers they have delivered:
      select * from Employee
	  select * from Courier

	  select e.EmployeeId, e.Name, count(CourierId) as TotalDelivers from Employee e join Courier c on e.EmployeeId = c.EmployeeId group by e.EmployeeId, e.Name

--48. Find couriers that were paid an amount greater than the cost of their respective courier services
      select * from Payment
      select * from CourierServices

	  select p.courierid from Payment p 
	   join courierservicesmapping m on p.CourierID= m.courierid
       join CourierServices s on s.ServiceID = m.serviceid where p.Amount > s.Cost 

	  
--SCOPE---

--Scope: Inner Queries, Non Equi Joins, Equi joins,Exist,Any,All 


--49. Find couriers that have a weight greater than the average weight of all couriers 
      select CourierId from Courier where Weight > (select avg (weight) from Courier) order by CourierId


--50. Find the names of all employees who have a salary greater than the average salary: 
      select Name from Employee where Salary > (select avg(salary) from Employee)


--51. Find the total cost of all courier services where the cost is less than the maximum cost 
    
	  select sum(Amount) from Payment p where Amount< (select max(Amount) from Payment)

--52. Find all couriers that have been paid for 
      select * from Courier
	  select * from Payment

	  select CourierId from Payment where PaymentDate Is not null

--53. Find the locations where the maximum payment amount was made 
      select LocationId, Amount from Payment where Amount = (select max(Amount) from Payment)


--54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender (e.g., 'SenderName')
      select sum(Weight) from Courier where SenderName = 'John Doe'

	  select CourierId from Courier where weight >(select sum(Weight) from Courier where SenderName = 'Mike Lee')