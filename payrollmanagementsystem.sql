create database payrollmanagementsystem;
use payrollmanagementsystem;

-- Employee Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    Position VARCHAR(100),
    JoiningDate DATE,
    TerminationDate DATE NULL
);

-- Payroll Table
CREATE TABLE Payroll (
    PayrollID INT PRIMARY KEY,
    EmployeeID INT,
    PayPeriodStartDate DATE,
    PayPeriodEndDate DATE,
    BasicSalary DECIMAL(10, 2),
    OvertimePay DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    NetSalary DECIMAL(10, 2)
);

-- Tax Table
CREATE TABLE Tax (
    TaxID INT PRIMARY KEY,
    EmployeeID INT,
    TaxYear INT,
    TaxableIncome DECIMAL(10, 2),
    TaxAmount DECIMAL(10, 2)
);

-- FinancialRecord Table
CREATE TABLE FinancialRecord (
    RecordID INT PRIMARY KEY,
    EmployeeID INT,
    RecordDate DATE,
    Description VARCHAR(255),
    Amount DECIMAL(10, 2),
    RecordType enum('tax payment','expense','income'));

INSERT INTO Employee (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, PhoneNumber, Address, Position, JoiningDate, TerminationDate)
VALUES
    (1, 'John', 'Doe', '1990-05-15', 'M', 'john.doe@example.com', '1234567890', '123 Main St', 'Manager', '2020-01-15', NULL),
    (2, 'Jane', 'Smith', '1985-09-20', 'F', 'jane.smith@example.com', '9876543210', '456 Oak St', 'Engineer', '2019-03-10', NULL),
    (3, 'Michael', 'Johnson', '1988-07-12', 'M', 'michael.johnson@example.com', '5551234567', '789 Elm St', 'Analyst', '2021-06-05', NULL),
    (4, 'Emily', 'Brown', '1995-02-28', 'F', 'emily.brown@example.com', '2223334444', '101 Pine St', 'Assistant', '2022-02-20', NULL),
    (5, 'David', 'Williams', '1983-11-10', 'M', 'david.williams@example.com', '9998887777', '202 Cedar St', 'Supervisor', '2018-07-01', NULL),
    (6, 'Emma', 'Taylor', '1992-04-05', 'F', 'emma.taylor@example.com', '6667778888', '303 Maple St', 'Coordinator', '2023-03-12', NULL),
    (7, 'Christopher', 'Anderson', '1980-12-18', 'M', 'chris.anderson@example.com', '1112223333', '404 Walnut St', 'Manager', '2017-05-20', NULL),
    (8, 'Olivia', 'Martinez', '1987-08-25', 'F', 'olivia.martinez@example.com', '4445556666', '505 Birch St', 'Engineer', '2019-09-02', NULL),
    (9, 'Daniel', 'Hernandez', '1993-06-30', 'M', 'daniel.hernandez@example.com', '7778889999', '606 Elmwood St', 'Analyst', '2020-11-10', NULL),
    (10, 'Sophia', 'Garcia', '1998-01-08', 'F', 'sophia.garcia@example.com', '3334445555', '707 Oakwood St', 'Assistant', '2021-04-15', NULL);

INSERT INTO Payroll (PayrollID, EmployeeID, PayPeriodStartDate, PayPeriodEndDate, BasicSalary, OvertimePay, Deductions, NetSalary)
VALUES
    (100, 1, '2024-03-01', '2024-03-15', 5000.00, 250.00, 500.00, 4750.00),
    (200, 2, '2024-03-01', '2024-03-15', 4500.00, 200.00, 400.00, 4300.00),
    (300, 3, '2024-03-01', '2024-03-15', 4800.00, 300.00, 550.00, 4550.00),
    (400, 4, '2024-03-01', '2024-03-15', 4200.00, 150.00, 350.00, 4000.00),
    (500, 5, '2024-03-01', '2024-03-15', 5100.00, 400.00, 600.00, 4700.00),
    (600, 6, '2024-03-01', '2024-03-15', 4700.00, 250.00, 450.00, 4400.00),
    (700, 7, '2024-03-01', '2024-03-15', 5200.00, 300.00, 500.00, 5000.00),
    (800, 8, '2024-03-01', '2024-03-15', 4600.00, 200.00, 400.00, 4400.00),
    (900, 9, '2024-03-01', '2024-03-15', 4900.00, 350.00, 600.00, 4450.00),
    (1000, 10, '2024-03-01', '2024-03-15', 4300.00, 150.00, 300.00, 4150.00);

INSERT INTO Tax (TaxID, EmployeeID, TaxYear, TaxableIncome, TaxAmount)
VALUES
    (1, 1, 2024, 60000.00, 12000.00),
    (2, 2, 2024, 55000.00, 11000.00),
    (3, 3, 2024, 62000.00, 12400.00),
    (4, 4, 2024, 52000.00, 10400.00),
    (5, 5, 2024, 63000.00, 12600.00),
    (6, 6, 2024, 59000.00, 11800.00),
    (7, 7, 2024, 64000.00, 12800.00),
    (8, 8, 2024, 58000.00, 11600.00),
    (9, 9, 2024, 61000.00, 12200.00),
    (10, 10, 2024, 54000.00, 10800.00);

INSERT INTO FinancialRecord (RecordID, EmployeeID, RecordDate, Description, Amount, RecordType)
VALUES
    (01, 1, '2024-03-10', 'Tax Payment', 2000.00, 'tax payment'),
    (02, 2, '2024-03-10', 'Office Supplies', 100.00, 'expense'),
    (03, 3, '2024-03-10', 'Bonus', 500.00, 'income'),
    (04, 4, '2024-03-10', 'Travel Expenses', 300.00, 'expense'),
    (05, 5, '2024-03-10', 'Tax Payment', 2500.00, 'tax payment'),
    (06, 6, '2024-03-10', 'Equipment Maintenance', 150.00, 'expense'),
    (07, 7, '2024-03-10', 'Salary', 5000.00, 'income'),
    (08, 8, '2024-03-10', 'Utilities', 200.00, 'expense'),
    (09, 9, '2024-03-10', 'Tax Payment', 2200.00, 'tax payment'),
    (010, 10, '2024-03-10', 'Training Costs', 200.00, 'expense');

alter table payroll add constraint fk1_employee_id foreign key (employeeid) references Employee(EmployeeID);

alter table tax add constraint fk2_employee_id foreign key (employeeid) references Employee(employeeid);

alter table financialrecord add constraint fk3_employee_id foreign key (employeeid) references Employee(employeeid) ;