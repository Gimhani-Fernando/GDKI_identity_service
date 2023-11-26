INSERT INTO `GramaDivision` (`id`, `province`, `district`, `DS_division`, `GN_division`)
VALUES
    (UUID(), 'Eastern', 'Trincomalee', 'Trincomalee North', 'Abayapura'),
    (UUID(), 'North Central', 'Anuradhapura', 'Anuradhapura East', 'Jayanthi Puram'),
    (UUID(), 'Sabaragamuwa', 'Ratnapura', 'Ratnapura Central', 'Malwala'),
    (UUID(), 'Northern', 'Jaffna', 'Jaffna Central', 'Jaffna Fort'),
    (UUID(), 'Uva', 'Badulla', 'Badulla North', 'Baduluwela'),
    (UUID(), 'North Western', 'Kurunegala', 'Kurunegala South', 'Malkaduwawa'),
    (UUID(), 'Southern', 'Matara', 'Matara West', 'Nupe'),
    (UUID(), 'Central', 'Nuwara Eliya', 'Nuwara Eliya North', 'Ragala'),
    (UUID(), 'Western', 'Gampaha', 'Gampaha East', 'Veyangoda'),
    (UUID(), 'Western', 'Colombo', 'Colombo South', 'Wellawatta'),
    (UUID(), 'Central', 'Kandy', 'Kandy Central', 'Dalada Veediya'),
    (UUID(), 'Southern', 'Galle', 'Galle City', 'Fort'),
    (UUID(), 'Southern', 'Hambantota', 'Hambantota East', 'Ambalantota');

INSERT INTO `IdentityRequest` (
    `id`, `initials_fullname`, `fullname`, `NIC`, `gender`, `contact_num`, `email`,
    `address`, `DOB`, `applied_date`, `approved_by`, `status`, `grama_divisionId`
)
VALUES
    (UUID(), 'S. Fernando', 'Saman Fernando', '345678912V', 'Male', '3456789120', 'saman@example.com',
    'Sample Address 4', '1987-08-25', '2023-11-21', 'Supervisor', 'Pending', '6c7f3841-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'K. Silva', 'Kamal Silva', '567891234V', 'Male', '5678912340', 'kamal@example.com',
    'Sample Address 5', '1992-04-12', '2023-11-20', 'Admin', 'Approved','6c7f3804-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'P. Perera', 'Priya Perera', '789123456V', 'Female', '7891234560', 'priya@example.com',
    'Sample Address 6', '1980-11-30', '2023-11-19', 'Manager', 'Rejected','6c7f37c5-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'R. Rajapaksa', 'Ravi Rajapaksa', '901234567V', 'Male', '9012345670', 'ravi@example.com',
    'Sample Address 7', '1998-07-05', '2023-11-18', 'Supervisor', 'Pending', '6c7f3780-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'N. Bandara', 'Nimasha Bandara', '234567891V', 'Female', '2345678910', 'nimasha@example.com',
    'Sample Address 8', '1983-01-18', '2023-11-17', 'Manager', 'Approved', '6c7f3727-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'M. Jayawardena', 'Mohan Jayawardena', '456789012V', 'Male', '4567890120', 'mohan@example.com',
    'Sample Address 9', '1995-09-02', '2023-11-16', 'Admin', 'Rejected', '6c7f36d6-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'T. Gunaratne', 'Thilini Gunaratne', '678901234V', 'Female', '6789012340', 'thilini@example.com',
    'Sample Address 10', '1989-03-10', '2023-11-15', 'Manager', 'Pending', '6c7f3689-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'A. Rathnayake', 'Amal Rathnayake', '890123456V', 'Male', '8901234560', 'amal@example.com',
    'Sample Address 11', '1986-12-28', '2023-11-14', 'Admin', 'Approved', '6c7f362e-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'I. Gunawardana', 'Ishara Gunawardana', '012345678V', 'Female', '0123456780', 'ishara@example.com',
    'Sample Address 12', '1991-06-20', '2023-11-13', 'Supervisor', 'Rejected', '6c7f35ca-8c5e-11ee-96e8-42010a8e0fea'),
     (UUID(), 'J. Doe', 'John Doe', '123456789V', 'Male', '1234567890', 'john@example.com',
    'Sample Address 1', '1990-05-15', '2023-11-24', 'Admin', 'Approved', '6c7f3550-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'J. Smith', 'Jane Smith', '987654321V', 'Female', '9876543210', 'jane@example.com',
    'Sample Address 2', '1985-10-20', '2023-11-22', 'Manager', 'Pending', '6c7f388a-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'A. Johnson', 'Alice Johnson', '456789123V', 'Female', '4567891230', 'alice@example.com',
    'Sample Address 3', '1995-12-30', '2023-11-23', 'Supervisor', 'Rejected', '6c7f332f-8c5e-11ee-96e8-42010a8e0fea'),
    (UUID(), 'S. Perera', 'Samantha Perera', '345678901V', 'Male', '3456789010', 'samantha@example.com',
    'Sample Address 13', '1984-02-08', '2023-11-12', 'Manager', 'Pending','6c7f2204-8c5e-11ee-96e8-42010a8e0fea');

