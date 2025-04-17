CREATE DATABASE Hospital-Database-Management-System

-- Drop existing tables if needed
DROP TABLE IF EXISTS Billing,
MedicalRecords, Admissions, 
Appointments, Doctors,
Departments, Patients;

-- Patients Table
CREATE TABLE Patients (
    PatientID INT IDENTITY (1000,1) PRIMARY KEY,
    FirstName VARCHAR(50)NOT NULL,
    LastName VARCHAR(50)NOT NULL,
    DateOfBirth DATE,
    Gender CHAR(1),
    Phone VARCHAR(15),
    Address TEXT,
    Email VARCHAR(100) UNIQUE NOT NULL)

	

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT IDENTITY (1,1)PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL);


-- Doctors Table
CREATE TABLE Doctors (
    DoctorID INT IDENTITY (103,1)PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Specialty VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


-- Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT IDENTITY (10,1) PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME,
    Reason TEXT,
    Status VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);



-- Admissions Table
CREATE TABLE Admissions (
    AdmissionID INT IDENTITY (1,1)PRIMARY KEY,
    PatientID INT,
    RoomNumber VARCHAR(10) NOT NULL,
    AdmissionDate DATETIME,
    DischargeDate DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);



-- MedicalRecords Table
CREATE TABLE MedicalRecords (
    RecordID INT IDENTITY (1,1) PRIMARY KEY,
    PatientID INT,
    Diagnosis TEXT,
    Treatment TEXT,
    DoctorID INT,
    DateCreated DATETIME,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);


-- Billing Table
CREATE TABLE Billing (
    BillID INT IDENTITY (1,1) PRIMARY KEY,
    PatientID INT,
    Amount DECIMAL(10, 2),
    BillingDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);



