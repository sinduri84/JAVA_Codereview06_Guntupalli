-- Gives the list of all mail joining 6 tables
SELECT mailID, customer.customerFirstName, customer.customerLastName, mail.recipientFirstName, mail.recipientLastName, concat(address.street,", ", address.zip,", ", address.city,", ", address.country) AS Destination, 
concat(employee.employeeFirstName, " ", employee.employeeLastName) AS Employee,
deliverytype.typeName, mail.receiveDate, invoice.parcelWeightGrams, invoice.parcelLengthCms, invoice.parcelBreadthCms, invoice.parcelHeightCms
FROM `mail` 
INNER JOIN customer on customer.customerID = mail.fkCustomerID
INNER JOIN employee on employee.employeeID = mail.fkEmployeeReceivedID
INNER JOIN invoice on invoice.invoiceID = mail.fkInvoiceID
INNER JOIN deliverytype on deliverytype.typeID = mail.fkDeliveryTypeID
INNER JOIN address on address.addressID = mail.fkRecipientAddressID;

-- Find all the mail that was sent from a specific branch
SELECT branch.branchID, branch.branchName, employee.employeeFirstName, mail.mailID FROM branch
INNER JOIN employee ON employee.fkBranchID =  branch.branchID
INNER JOIN mail ON mail.fkEmployeeReceivedID = employee.employeeID
WHERE branch.branchName = "Tuscaloosa Branch";

-- Count the mail that was sent from a specific branch
SELECT count(mail.mailID) FROM branch
INNER JOIN employee ON employee.fkBranchID =  branch.branchID
INNER JOIN mail ON mail.fkEmployeeReceivedID = employee.employeeID
WHERE branch.branchName = "Tuscaloosa Branch";

-- Who sent packages between 2016-01-01 and 2017-12-31
SELECT customer.customerID, customer.customerFirstName AS FirstName, customer.customerLastName AS LastName, mail.mailID, mail.receiveDate AS MailDate FROM customer
INNER JOIN mail ON mail.fkCustomerID = customer.customerID
WHERE mail.receiveDate >= '2016-01-01 00:00:00' AND mail.receiveDate <= '2018-01-01 00:00:00';

-- Show All Employees and their respective Branches
SELECT branch.branchID, branch.branchName, employee.employeeID, employee.employeeFirstName, employee.employeeLastName, employee.hireDate, employee.salary FROM branch
INNER JOIN company ON branch.fkCompanyID = company.companyID
INNER JOIN employee ON employee.fkBranchID = branch.branchID;

-- Show Employees and their roles working in the Headoffice Branch
SELECT branch.branchID, branch.branchName, employee.employeeID, employee.employeeFirstName, employee.employeeLastName, employeeType, employee.hireDate, employee.salary FROM branch
INNER JOIN company ON branch.fkCompanyID = company.companyID
INNER JOIN employee ON employee.fkBranchID = branch.branchID
WHERE branch.branchName = 'HeadOffice';

-- Tracking Info of Mail
SELECT mail.mailID, trackinginfo.updateDate, address.city, address.country, concat(employee.employeeFirstName, " ", employee.employeeLastName) AS Employee FROM trackinginfo
INNER JOIN mail ON trackinginfo.fkMailID = mail.mailID
INNER JOIN employee ON employee.employeeID = trackinginfo.fkEmployeeReceivedID
INNER JOIN address ON address.addressID = trackinginfo.fkAddressID
WHERE trackinginfo.fkMailID = 6;

-- Show latest parcel standard for the company
SELECT * FROM mailstandard ORDER BY setDate DESC LIMIT 1;

-- Show Customers who changed their address atleast once
SELECT * FROM addressmap
INNER JOIN customer ON addressmap.fkCustomerID = customer.customerID
INNER JOIN address ON addressmap.fkAddressID = address.addressID
WHERE customer.customerID IN 
( SELECT addressmap.fkCustomerID FROM addressmap GROUP BY addressmap.fkCustomerID HAVING COUNT(*) > 1)
;

-- Show Employees who are in the manager cadre
SELECT * FROM employee
WHERE employee.employeeType LIKE '%manager%';

-- 







