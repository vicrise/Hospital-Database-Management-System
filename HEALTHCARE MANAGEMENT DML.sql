-- Insert Data into Patients
INSERT INTO Patients ( FirstName, LastName, DateOfBirth, Gender, Phone, Address, Email) VALUES
('Ashley','Walker','1993-04-07','F','+1-215-268-8872','0252 Perez Fort Apt. 276, West Karenville, DC 26627','ashleywalker@gmail.com
'),
( 'Abigail', 'Turner',  '1975-05-02','M','+1-215-268-8873', '759 Valenzuela Shore Suite 409, West James, VT 14938','abigailturner@gmail.com
'),
('Michelle', 'Thomas',	'1996-05-14' ,'F','+1-215-268-8874 ', '07888 Berg Island, Jeremymouth, FL 68610' ,'michellethomas@gmail.com'
),
( 'Brenda',	'Arnold' ,	'2022-10-25'	,'M',	'+1-215-268-8875', '720 Anna Brook, Port Monica, MD 41373' ,'brendaarnold@gmail.com'
),
( 'Todd', 'Wright' ,	'2005-12-18'	,'F',	'+1-215-268-8876', '032 Moses Run, Paulaborough, VA 05696',	'toddwright@gmail.com'
),
('Abigail',	'Johnson'	, '1941-05-17',	'M',	'+1-215-268-8877'	,'070 Hernandez Flats, New Daisymouth, KY 39148',	'abigailjohnson@gmail.com'
),
('Kimberly' ,	'Hall' ,	'1960-09-21' ,	'M' ,	'+1-215-268-8878' , '8675 Black Hollow Suite 856, Sarahview, AL 28557','kimberlyhall@gmail.com'
),
('Michael', 'Hoover' ,	'1969-04-03' ,	'M' ,	'+1-215-268-8879',	'6622 Lee Extension Apt. 148, New Melissa, NM 16412',	'michaelhoover@gmail.com'
),
('Angela','Butler',	'1996-09-20',	'F',	'+1-215-268-8880',	'2108 Jacqueline Course, New Derrickshire, SD 47569',	'angelabutler@gmail.com'
),
('Jasmine',	'Stephenson', '1943-08-21', 'F',	'+1-215-268-8881',	'7259 Catherine Track, Morrisonville, MT 13024',	'jasminestephenson@gmail.com'
);

		-- Insert Data into Department table
INSERT INTO Departments (  DepartmentName,   Location ) VALUES 
                        ('Cardiology ', '	North Danielhaven'),
                        ('Neurology' ,	'North Taraland'),
                        ('Orthopedics',	'North Sherriburgh'),
                        ('Pediatrics' ,	'Sharonshire'),
                        ('Oncology' ,	'West Vanessa'),
                        ('General Medicine'	, 'Maryshire');

	-- Insert Data into Doctors table
INSERT INTO Doctors (  FirstName , LastName, Specialty ,  Phone, Email ) VALUES
                    ('Cheryl'	, 'Lowery' ,	'Pediatrician' ,	'+1(215)268-8983',	'cheryllowery@gmail.com'),
                    ('Marc',	'Wells',	'neurologist',	'+1(215)268-8984',	'marcwells@gmail.com'),
                    ('Kathryn'	,'Brown',	'Cardiologist',	'+1(215)268-8985',	'kathrynbrown@gmail.com'),
                    ('Sharon'	,'White',	'Oncologist',	'+1(215)268-8986',	'sharonwhite@gmail.com'	),	
                    ('Dana'	,'Moody', 'neurologist',	'+1(215)268-8987',	'danamoody@gmail.com'),
                    ('Gabriel',	'Campbell',	'Oncologist',	'+1(215)268-8988', 'gabrielcampbell@gmail.com'),
                    ('Sarah',	'Carson',	'General Practitioner'	,'+1(215)268-8989'	,'sarahcarson@gmail.com'),
                    ('Elizabeth'	,'Patterson',	'Pediatrician',	'+1(215)268-8990',	'elizabethpatterson@gmail.com'),
                    ('John',	'Hernandez',	'General Practitioner',	'+1(215)268-8991',	'johnhernandez@gmail.com'),
                    ('Julie',	'Barr',	'Orthopedist', 	'+1(215)268-8992',	'juliebarr@gmail.com');

                     UPDATE Doctors
                     SET DepartmentID = CASE WHEN DoctorID = 103 THEN  4
                     WHEN DoctorID = 104 THEN 2
                     WHEN DoctorID = 105 THEN 1
                     WHEN DoctorID = 106 THEN 5
                     WHEN DoctorID = 107 THEN 2
                     WHEN DoctorID = 108 THEN 5
                     WHEN DoctorID = 109 THEN 6
                     WHEN DoctorID = 110 THEN 4
                     WHEN DoctorID = 111 THEN 6
                     ELSE 3 END;


	-- Insert Data into Appointments Table
INSERT INTO Appointments (  PatientID  ,   DoctorID, AppointmentDate  ,  Reason, Status) VALUES
                         (1000, 103,'2025-01-06', 'Routine Checkup' ,	'Scheduled'),
                         (1001, 104,'2024-09-14', 'Consultation', 	'Completed'),
                         (1002,	105, '2025-02-22',	'Follow-up',	'Cancelled'),
                         (1003,	106, '2024-07-20',	'Emergency' ,'Scheduled'),
                         (1004,	107, '2024-07-16'	,'Routine Checkup',	'Scheduled'),
                         (1005,	108	,'2024-04-18',	'Consultation',	'Cancelled'),
                         (1006,	109	,'2024-04-26'	,'Emergency',	'Completed'),
                         (1007,	110,'2024-12-04', 'Follow-up', 'Cancelled'),
                         (1008,	111,'2024-06-19',	'Routine Checkup',	'Completed'),
                         (1009,	112,'2025-01-27', 'Consultation',	'Scheduled');


	-- Insert Data into Admissions Table
INSERT INTO Admissions ( PatientID, RoomNumber,  AdmissionDate , DischargeDate) VALUES
                       ( 1000,109, '2024-09-20','2025-04-11'),
                       ( 1001,272, '2024-10-03', '2025-04-11'),
                       ( 1002,411, '2024-10-06', '2025-04-11'),
                       ( 1003,198, '2024-12-11', '2025-04-11'),
                       ( 1004,122, '2023-10-10', '2025-04-11'),
                       ( 1005,311, '2025-04-06', '2025-04-11'),
                       ( 1006,430, '2024-06-15', '2025-04-11'),
                       ( 1007,131, '2024-03-05', '2025-04-11'),
                       ( 1008,457, '2024-08-28', '2025-04-11'),
                       ( 1009,259, '2023-12-17', '2025-04-11');

	-- Insert Data into MedicalRecords Table 
INSERT INTO MedicalRecords ( PatientID, Diagnosis,  Treatment,  DoctorID, DateCreated) VALUES
                           (1000,	'Diabetes',	'Medication', 103, '2024-09-16'),
                           (1001,	'Migraine', 'Observation',	104,'2025-01-22'),        
                           (1002,	'Fracture',	'Observation',	105,'2024-08-17'),
                           (1003,	'Fracture',	'Surgery',	106, '2025-01-27'),
                           (1004,	'Diabetes',	'Surgery',	107, '2024-06-29'),
                           (1005,	'Diabetes',	'Therapy', 108,	'2025-01-05'),
                           (1006,	'Fracture',	'Observation',	109, '2025-04-03'),
                           (1007,	'Diabetes',	'Observation',	110, '2025-03-04'),
                           (1008,	'Diabetes',	'Surgery',	111, '2025-02-09'),
                           (1009,	'Flu', 'Therapy', 112,	'2024-07-16');

	-- Insert Data into Billing Table
INSERT INTO Billing ( PatientID, Amount ,  BillingDate, Status) VALUES
                    (1000, 1510.72,	'2025-02-12',	'Unpaid'),
                    (1001, 1076.63,	'2024-09-19', 'Paid'),
                    (1002, 3903.59,	'2024-12-08', 'Pending'),
                    (1003, 3334.02, '2025-03-09', 'Unpaid'),
                    (1004, 3929.69,	'2025-01-20', 'Unpaid'),
                    (1005, 1486.2,  '2024-07-25', 'Paid'),
                    (1006, 3100.84,	'2024-08-11', 'Unpaid'),
                    (1007, 4172.65,	'2024-05-14', 'Pending'),
                    (1008, 685.35,	'2024-05-18', 'Unpaid'),
                    (1009, 1839.79,	'2025-02-02', 'Paid');
