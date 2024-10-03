use CourierManagementSystem

INSERT INTO Users (UserId, Name, Email, Password, ContactNo, Address)
VALUES
(100001, 'John Doe', 'john.doe@example.com', 'password1', '9876543210', '123 Main St, City A'),
(100002, 'Jane Smith', 'jane.smith@example.com', 'password2', '8765432109', '456 Elm St, City B'),
(100003, 'Sam Wilson', 'sam.wilson@example.com', 'password3', '7654321098', '789 Oak St, City C'),
(100004, 'Nina Johnson', 'nina.johnson@example.com', 'password4', '6543210987', '321 Pine St, City D'),
(100005, 'Mike Lee', 'mike.lee@example.com', 'password5', '5432109876', '654 Maple St, City E'),
(100006, 'Lisa Turner', 'lisa.turner@example.com', 'password6', '4321098765', '987 Cedar St, City F'),
(100007, 'John Allen', 'john.allen@example.com', 'password7', '3210987654', '258 Birch St, City G'),
(100008, 'Kathy Brooks', 'kathy.brooks@example.com', 'password8', '2109876543', '369 Willow St, City H'),
(100009, 'David Wright', 'david.wright@example.com', 'password9', '1098765432', '147 Spruce St, City I'),
(100010, 'Emily Clark', 'emily.clark@example.com', 'password10', '1987654321', '753 Redwood St, City J'),
(100011, 'Chris Evans', 'chris.evans@example.com', 'password11', '2987654320', '369 Chestnut St, City K'),
(100012, 'Sophia Brown', 'sophia.brown@example.com', 'password12', '3987654319', '147 Ash St, City L'),
(100013, 'John Miller', 'John.miller@example.com', 'password13', '4987654318', '258 Poplar St, City M'),
(100014, 'Olivia Harris', 'olivia.harris@example.com', 'password14', '5987654317', '369 Beech St, City N'),
(100015, 'Mason King', 'mason.king@example.com', 'password15', '6987654316', '147 Fir St, City O'),
(100016, 'Ava Davis', 'ava.davis@example.com', 'password16', '7987654315', '258 Palm St, City P'),
(100017, 'Ethan Moore', 'ethan.moore@example.com', 'password17', '8987654314', '369 Sycamore St, City Q'),
(100018, 'Isabella White', 'isabella.white@example.com', 'password18', '9987654313', '147 Hemlock St, City R'),
(100019, 'James Scott', 'james.scott@example.com', 'password19', '1987654312', '258 Pineapple St, City S'),
(100020, 'Mia Adams', 'mia.adams@example.com', 'password20', '2987654311', '369 Walnut St, City T')


INSERT INTO Employee (EmployeeID, Name, Email, ContactNumber, Role, Salary)
VALUES
(1, 'Alice Cooper', 'alice@example.com', '9876543210', 'Courier', 30000.00),
(2, 'Bob Dylan', 'bob@example.com', '8765432109', 'Delivery Manager', 45000.00),
(3, 'Charlie Parker', 'charlie@example.com', '7654321098', 'Courier', 32000.00),
(4, 'David Gilmour', 'david@example.com', '6543210987', 'Dispatch Supervisor', 48000.00),
(5, 'Ella Fitzgerald', 'ella@example.com', '5432109876', 'Courier', 31000.00),
(6, 'Freddie Mercury', 'freddie@example.com', '4321098765', 'Logistics Manager', 55000.00),
(7, 'George Harrison', 'george@example.com', '3210987654', 'Courier', 29000.00),
(8, 'Hank Williams', 'hank@example.com', '2109876543', 'Courier', 30000.00),
(9, 'Isaac Hayes', 'isaac@example.com', '1098765432', 'Dispatcher', 42000.00),
(10, 'James Brown', 'jamesb@example.com', '1987654321', 'Courier', 34000.00),
(11, 'Kurt Cobain', 'kurt@example.com', '9876543219', 'Courier', 31000.00),
(12, 'Louis Armstrong', 'louis@example.com', '8765432108', 'Dispatch Supervisor', 46000.00),
(13, 'Mick Jagger', 'mick@example.com', '7654321097', 'Logistics Manager', 52000.00),
(14, 'Nina Simone', 'nina@example.com', '6543210986', 'Courier', 28000.00),
(15, 'Otis Redding', 'otis@example.com', '5432109875', 'Courier', 30000.00),
(16, 'Paul McCartney', 'paul@example.com', '4321098764', 'Dispatcher', 41000.00),
(17, 'Queen Latifah', 'queen@example.com', '3210987653', 'Courier', 35000.00),
(18, 'Ray Charles', 'ray@example.com', '2109876542', 'Courier', 32000.00),
(19, 'Stevie Wonder', 'stevie@example.com', '1098765431', 'Courier', 29000.00),
(20, 'Tina Turner', 'tina@example.com', '1987654320', 'Logistics Manager', 50000.00)

INSERT INTO Courier (CourierID, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate, UserID) 
VALUES
(1, 'John Doe', '123 Main St, City A', 'Jane Smith', '456 Elm St, City B', 5.75, 'Delivered', 'TRK123456', '2024-09-30', 100001),
(2, 'John Doe', '123 Main St, City A', 'David Wright', '147 Spruce St, City I', 6.50, 'Delivered', 'TRK123457', '2024-10-01', 100001),
(3, 'Sam Wilson', '789 Oak St, City C', 'Emily Clark', '753 Redwood St, City J', 10.50, 'In-Transit', 'TRK123458', '2024-10-04', 100003),
(4, 'Sam Wilson', '789 Oak St, City C', 'Sophia Brown', '147 Ash St, City L', 4.00, 'In-Transit', 'TRK123459', '2024-10-02', 100003),
(5, 'Nina Johnson', '321 Pine St, City D', 'Chris Evans', '369 Chestnut St, City K', 2.25, 'Delivered', 'TRK123460', '2024-09-29', 100004),
(6, 'Nina Johnson', '321 Pine St, City D', 'Mason King', '147 Fir St, City O', 7.00, 'Delivered', 'TRK123461', '2024-09-28', 100004),
(7, 'Mike Lee', '654 Maple St, City E', 'Olivia Harris', '369 Beech St, City N', 3.75, 'In-Transit', 'TRK123462', '2024-10-04', 100005),
(8, 'Lisa Turner', '987 Cedar St, City F', 'Ethan Moore', '369 Sycamore St, City Q', 12.25, 'In-Transit', 'TRK123463', '2024-10-04', 100006),
(9, 'John Allen', '258 Birch St, City G', 'Kathy Brooks', '369 Willow St, City H', 4.00, 'Delivered', 'TRK123464', '2024-09-27', 100007),
(10, 'John Allen', '258 Birch St, City G', 'Isabella White', '147 Hemlock St, City R', 5.50, 'In-Transit', 'TRK123465', '2024-10-03', 100007),
(11, 'David Wright', '147 Spruce St, City I', 'Emily Clark', '753 Redwood St, City J', 6.75, 'Delivered', 'TRK123466', '2024-09-30', 100009),
(12, 'Emily Clark', '753 Redwood St, City J', 'Nina Johnson', '321 Pine St, City D', 9.00, 'Delivered', 'TRK123467', '2024-10-01', 100010),
(13, 'Chris Evans', '369 Chestnut St, City K', 'Mason King', '147 Fir St, City O', 7.25, 'In-Transit', 'TRK123468', '2024-10-04', 100011),
(14, 'Sophia Brown', '147 Ash St, City L', 'John Doe', '123 Main St, City A', 8.50, 'In-Transit', 'TRK123469', '2024-10-04', 100012),
(15, 'Ava Davis', '258 Palm St, City P', 'Jane Smith', '456 Elm St, City B', 6.00, 'Delivered', 'TRK123470', '2024-09-28', 100016),
(16, 'Ethan Moore', '369 Sycamore St, City Q', 'Kathy Brooks', '369 Willow St, City H', 4.50, 'In-Transit', 'TRK123471', '2024-10-04', 100017),
(17, 'Isabella White', '147 Hemlock St, City R', 'Sam Wilson', '789 Oak St, City C', 5.00, 'Delivered', 'TRK123472', '2024-09-29', 100018),
(18, 'Mason King', '147 Fir St, City O', 'Olivia Harris', '369 Beech St, City N', 2.75, 'In-Transit', 'TRK123473', '2024-10-04', 100015),
(19, 'John Miller', '258 Poplar St, City M', 'James Scott', '258 Pineapple St, City S', 7.50, 'In-Transit', 'TRK123474', '2024-10-05', 100013),
(20, 'John Miller', '258 Poplar St, City M', 'Sophia Brown', '147 Ash St, City L', 9.75, 'Delivered', 'TRK123475', '2024-09-30', 100013),
(21, 'Lisa Turner', '987 Cedar St, City F', 'David Wright', '147 Spruce St, City I', 5.50, 'Delivered', 'TRK123476', '2024-10-01', 100006),
(22, 'Kathy Brooks', '369 Willow St, City H', 'Ava Davis', '258 Palm St, City P', 8.00, 'In-Transit', 'TRK123477', '2024-10-04', 100008),
(23, 'Jane Smith', '456 Elm St, City B', 'Mike Lee', '654 Maple St, City E', 4.25, 'Delivered', 'TRK123478', '2024-09-28', 100002),
(24, 'David Wright', '147 Spruce St, City I', 'John Allen', '258 Birch St, City G', 10.00, 'In-Transit', 'TRK123479', '2024-10-02', 100009),
(25, 'Emily Clark', '753 Redwood St, City J', 'Lisa Turner', '987 Cedar St, City F', 3.50, 'Delivered', 'TRK123480', '2024-09-30', 100010),
(26, 'Sam Wilson', '789 Oak St, City C', 'Mason King', '147 Fir St, City O', 9.00, 'In-Transit', 'TRK123481', '2024-10-05', 100003),
(27, 'Nina Johnson', '321 Pine St, City D', 'John Miller', '258 Poplar St, City M', 6.75, 'Delivered', 'TRK123482', '2024-10-01', 100004),
(28, 'John Doe', '123 Main St, City A', 'Isabella White', '147 Hemlock St, City R', 8.50, 'In-Transit', 'TRK123483', '2024-10-03', 100001),
(29, 'Mike Lee', '654 Maple St, City E', 'John Allen', '258 Birch St, City G', 2.25, 'Delivered', 'TRK123484', '2024-09-28', 100005),
(30, 'Jane Smith', '456 Elm St, City B', 'Sophia Brown', '147 Ash St, City L', 7.00, 'In-Transit', 'TRK123485', '2024-10-04', 100002)

delete from Courier 
TRUNCATE TABLE Courier


INSERT INTO CourierServices (ServiceID, ServiceName, Cost)
VALUES
(1, 'Standard Delivery', 100.00),
(2, 'Express Delivery', 200.00),
(3, 'Overnight Delivery', 250.00),
(4, 'Same Day Delivery', 300.00),
(5, 'International Delivery', 500.00)


INSERT INTO Location (LocationID, LocationName, Address)
VALUES
(1, 'City A', '123 Street, City A'),
(2, 'City B', '456 Avenue, City B'),
(3, 'City C', '789 Boulevard, City C'),
(4, 'City D', '321 Circle, City D'),
(5, 'City E', '654 Plaza, City E'),
(6, 'City F', '987 Road, City F'),
(7, 'City G', '258 Street, City G'),
(8, 'City H', '369 Lane, City H'),
(9, 'City I', '147 Road, City I'),
(10, 'City J', '753 Path, City J'),
(11, 'City K', '951 Highway, City K'),
(12, 'City L', '753 Hill, City L'),
(13, 'City M', '369 Avenue, City M'),
(14, 'City N', '147 Plaza, City N'),
(15, 'City O', '258 Circle, City O'),
(16, 'City P', '369 Road, City P'),
(17, 'City Q', '147 Avenue, City Q'),
(18, 'City R', '258 Boulevard, City R'),
(19, 'City S', '753 Path, City S'),
(20, 'City T', '951 Street, City T')


INSERT INTO Payment (PaymentID, Amount, PaymentDate, CourierID, LocationID)
VALUES
(1, 500.00, '2023-09-25', 1, 1),
(2, 250.00, '2023-09-22', 2, 2),
(3, 600.00, '2023-09-27', 3, 3),
(4, 100.00, '2023-09-21', 4, 4),
(5, 400.00, '2023-09-29', 5, 5),
(6, 180.00, '2023-09-23', 6, 6),
(7, 500.00, '2023-09-20', 7, 7),
(8, 200.00, '2023-09-24', 8, 8),
(9, 120.00, '2023-09-22', 9, 9),
(10, 350.00, '2023-09-28', 10, 10),
(11, 600.00, '2023-09-26', 11, 11),
(12, 250.00, '2023-09-21', 12, 12),
(13, 300.00, '2023-09-30', 13, 13),
(14, 450.00, '2023-09-23', 14, 14),
(15, 150.00, '2023-09-22', 15, 15),
(16, 700.00, '2023-09-25', 16, 16),
(17, 1000.00, '2023-09-27', 17, 17),
(18, 120.00, '2023-09-20', 18, 18),
(19, 300.00, '2023-09-29', 19, 19),
(20, 500.00, '2023-09-28', 20, 20)

select * from Courier
INSERT into Packages (PackageId,PackageName,CourierId) values (
101,'Television',1), 
(102,'Books',1),
(103,'Microphone',2),
(104,'Letter',2),
(105,'Mobile Phone',3)
