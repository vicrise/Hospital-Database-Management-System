# Hospital-Database-Management-System
### Project Introduction 
A structured SQL database designed to manage and streamline key operations within a healthcare facility. 
This project simulates the backend of a hospital management system with support for handling patient records, appointments, billing, admissions, departments, and doctors. 
This system is ideal for healthcare analytics, operations simulation, and dashboard development with visualisation tools like Power BI. This system will ensure seamless data management, automation of healthcare operations, and efficient decision-making through structured data storage and retrieval.
### Project Overview 
The Healthcare Management System Database is designed to handle a hospital or clinic's internal operations. The schema models real-world relationships between patient records, appointments, billing, admissions, departments, and doctors to provide a foundational backend for electronic health systems (EHS) or hospital information systems (HIS).
health systems (EHS) or hospital information systems (HIS).

### The system includes the following main tables:
- **Patients**: Stores demographic and contact details.

- **Doctors:** Includes professional information and departmental assignments.

- **Departments:** Contains healthcare specialities and locations.

- **Appointments**: Tracks patient bookings with doctors.

- **Admissions:** Records patients' admissions and room allocations.

- **Medical Records:** Contains diagnoses, treatments, and record creation details.

- **Billing:** Manages financial transactions, billing dates, and payment status.

### Requirement Analysis & Project Breakdown for the Healthcare Database System

### High-Level Requirement Analysis
This system is necessary to efficiently handle patient records, appointments, billing, admissions, departments, and medical staff. 
The system should ensure data integrity, support the patient-doctor relationship, and provide real-time reporting for effective decision-making.
### 1.1 Functional Requirements
1. Patients’ information
- It contains the information about the patients ranging from name, gender, phone number, email and so on
- Gender distribution and the means of contacting the patient
  
2. Doctors’ information
Includes:
- professional information (name, email and phone number)
- department assignment (area of speciality and departmental ID that is linked to the departmental table)
  
3. Departments 
Represents:
- hospital units (Cardiology, Neurology)
-  their locations within the hospital

4. Appointments
- Tracks all doctor-patient interactions (appointment date, reason for patient visitation)
  
5. Admissions
- Stores records of patient care from the admission date, room number and discharge date
   
6. Medical Records
- Clinical documentation for patient encounters
- The date the record was recreated
- The diagnosis was made, and treatment was administered
- Doctors who attended to the patient
  
7. Billing
- Financial records of healthcare services
- Amount paid by the patients 
- The date the payment was made 
- Status of the payment (paid/unpaid/pending)

### Project Breakdown
The project will be broken into several phases, each focusing on a core aspect of database development and implementation
### Phase 1: Database Design & Normalization
- Identify entities and relationships.
- Normalize the schema to 3rd Normal Form (3NF).
- Define primary keys (PK) and foreign keys (FK).
### Phase 2: Database Implementation (SQL Server)

 Create tables for:
- Patients 
- Doctors
- Departments 
- Appointments
- Admissions
- Medical Records
- Billing
  
Define data types and relationships.

### Phase 3: Data Population 
- Populate tables with sample data (at least 10 records per table).



### Conclusion 
The Healthcare Management System Database provides a foundational backend for managing and analyzing core hospital operations. 
By simulating realistic data and relationships,
this project showcases practical skills in relational database design, data handling, and healthcare analytics
This project reflects my growing expertise in healthcare data analysis and demonstrates my ability to design systems that support efficiency, structure, and insight in healthcare environments.

  








