INSERT INTO customer (
    customer_id,
    customer_name,
    customer_phone_number
) VALUES (
    1,
    'Noureldin',
    6472711234
);

INSERT INTO customer (
    customer_id,
    customer_name,
    customer_phone_number
) VALUES (
    2,
    'Mohamed',
    6472711357
);

INSERT INTO customer (
    customer_id,
    customer_name,
    customer_phone_number
) VALUES (
    3,
    'Saleh',
    6472711359
);

INSERT INTO customer (
    customer_id,
    customer_name,
    customer_phone_number
) VALUES (
    4,
    'Bob',
    6472711388
);

INSERT INTO customer (
    customer_id,
    customer_name,
    customer_phone_number
) VALUES (
    5,
    'alex',
    6472711321
);

INSERT INTO product (
    product_id,
    product_name,
    purchase_date,
    product_description,
    number_of_reports
) VALUES (
    1,
    'Rogers Infinite',
    TO_DATE('15/01/2019', 'DD/MM/YYYY'),
    'Unlimited shareable data',
    200
);

INSERT INTO product (
    product_id,
    product_name,
    purchase_date,
    product_description,
    number_of_reports
) VALUES (
    2,
    'Ignite TV',
    TO_DATE('12/04/2019', 'DD/MM/YYYY'),
    'Captivating live content',
    700
);

INSERT INTO product (
    product_id,
    product_name,
    purchase_date,
    product_description,
    number_of_reports
) VALUES (
    3,
    'iPhone XR',
    TO_DATE('05/09/2019', 'DD/MM/YYYY'),
    '12th generation iPhone',
    45
);

INSERT INTO product (
    product_id,
    product_name,
    purchase_date,
    product_description,
    number_of_reports
) VALUES (
    4,
    'PS4',
    TO_DATE('08/04/2020', 'DD/MM/YYYY'),
    'Home Video Game Console',
    4
);

INSERT INTO product (
    product_id,
    product_name,
    purchase_date,
    product_description,
    number_of_reports
) VALUES (
    5,
    'Samsung QLED TV',
    TO_DATE('03/05/2020', 'DD/MM/YYYY'),
    '2020 QLED 8K TV',
    20
);

INSERT INTO resolution (
    resolution_id,
    resolution_notes,
    resolution_date,
    repair_cost,
    customer_id
) VALUES (
    1,
    'Replaced router',
    TO_DATE('17/01/2019', 'DD/MM/YYYY'),
    50.89,
    1
);

INSERT INTO resolution (
    resolution_id,
    resolution_notes,
    resolution_date,
    repair_cost,
    customer_id
) VALUES (
    2,
    'Replaced cables',
    TO_DATE('15/04/2019', 'DD/MM/YYYY'),
    100.5,
    2
);

INSERT INTO resolution (
    resolution_id,
    resolution_notes,
    resolution_date,
    repair_cost,
    customer_id
) VALUES (
    3,
    'Replaced screen',
    TO_DATE('08/09/2019', 'DD/MM/YYYY'),
    200.25,
    3
);

INSERT INTO resolution (
    resolution_id,
    resolution_notes,
    resolution_date,
    repair_cost,
    customer_id
) VALUES (
    4,
    'Replaced Controller',
    TO_DATE('08/05/2020', 'DD/MM/YYYY'),
    30,
    4
);

INSERT INTO resolution (
    resolution_id,
    resolution_notes,
    resolution_date,
    repair_cost,
    customer_id
) VALUES (
    5,
    'Replaced HDMI cable',
    TO_DATE('03/06/2020', 'DD/MM/YYYY'),
    20,
    5
);

INSERT INTO tracking (
    tracking_id,
    tracking_notes,
    tracking_sdate,
    tracking_status
) VALUES (
    1,
    'Escalated to manager',
    TO_DATE('17/01/2019', 'DD/MM/YYYY'),
    'In Progress'
);

INSERT INTO tracking (
    tracking_id,
    tracking_notes,
    tracking_sdate,
    tracking_status
) VALUES (
    2,
    'Yet to verify',
    TO_DATE('15/04/2019', 'DD/MM/YYYY'),
    'Verify with admin'
);

INSERT INTO tracking (
    tracking_id,
    tracking_notes,
    tracking_sdate,
    tracking_status
) VALUES (
    3,
    'Contact warranty department',
    TO_DATE('07/09/2019', 'DD/MM/YYYY'),
    'Warranty replacement approved'
);

INSERT INTO tracking (
    tracking_id,
    tracking_notes,
    tracking_sdate,
    tracking_status
) VALUES (
    4,
    'Yet to verify',
    TO_DATE('18/10/2020', 'DD/MM/YYYY'),
    'Warranty HDMI cable approved'
);

INSERT INTO tracking (
    tracking_id,
    tracking_notes,
    tracking_sdate,
    tracking_status
) VALUES (
    5,
    'Warranty verified',
    TO_DATE('18/10/2020', 'DD/MM/YYYY'),
    'Warranty controller approved'
);

INSERT INTO admin (
    admin_id,
    admin_name,
    admin_password
) VALUES (
    1,
    'Noureldin',
    '123456789'
);

INSERT INTO admin (
    admin_id,
    admin_name,
    admin_password
) VALUES (
    2,
    'Mohamed',
    '123456789'
);

INSERT INTO admin (
    admin_id,
    admin_name,
    admin_password
) VALUES (
    3,
    'Saleh',
    '123456789'
);

INSERT INTO feedback (
    rating,
    rating_comment,
    rating_id,
    resolution_id
) VALUES (
    9,
    'Great service',
    1,
    1
);

INSERT INTO feedback (
    rating,
    rating_comment,
    rating_id,
    resolution_id
) VALUES (
    7,
    'Good service',
    2,
    2
);

INSERT INTO feedback (
    rating,
    rating_comment,
    rating_id,
    resolution_id
) VALUES (
    4,
    'Terrible service',
    3,
    3
);

INSERT INTO feedback (
    rating,
    rating_comment,
    rating_id,
    resolution_id
) VALUES (
    3,
    'Average service',
    4,
    4
);

INSERT INTO feedback (
    rating,
    rating_comment,
    rating_id,
    resolution_id
) VALUES (
    5,
    'Fantastic service',
    5,
    5
);

INSERT INTO province (
    province_id,
    province_name
) VALUES (
    1,
    'Ontario'
);

INSERT INTO province (
    province_id,
    province_name
) VALUES (
    2,
    'Quebec'
);

INSERT INTO city (
    city_id,
    city_name,
    province_id
) VALUES (
    1,
    'toronto',
    1
);

INSERT INTO city (
    city_id,
    city_name,
    province_id
) VALUES (
    2,
    'oakville',
    1
);

INSERT INTO city (
    city_id,
    city_name,
    province_id
) VALUES (
    3,
    'montreal',
    2
);

INSERT INTO department (
    department_id,
    department_name,
    department_size,
    city_id
) VALUES (
    1,
    'Wireless',
    50,
    1
);

INSERT INTO department (
    department_id,
    department_name,
    department_size,
    city_id
) VALUES (
    2,
    'TV Bundles',
    20,
    2
);

INSERT INTO department (
    department_id,
    department_name,
    department_size,
    city_id
) VALUES (
    3,
    'Internet',
    100,
    3
);

INSERT INTO department (
    department_id,
    department_name,
    department_size,
    city_id
) VALUES (
    4,
    'PS4',
    30,
    2
);

INSERT INTO department (
    department_id,
    department_name,
    department_size,
    city_id
) VALUES (
    5,
    'Samsung TV',
    60,
    2
);

INSERT INTO employee (
    employee_id,
    employee_name,
    employee_role,
    employee_phone_number,
    department_id
) VALUES (
    1,
    'Alexander',
    'Supervisor',
    6472711234,
    1
);

INSERT INTO employee (
    employee_id,
    employee_name,
    employee_role,
    employee_phone_number,
    department_id
) VALUES (
    2,
    'Sam',
    'Manager',
    6472711239,
    2
);

INSERT INTO employee (
    employee_id,
    employee_name,
    employee_role,
    employee_phone_number,
    department_id
) VALUES (
    3,
    'Sarah',
    'CEO',
    2892711357,
    3
);

INSERT INTO employee (
    employee_id,
    employee_name,
    employee_role,
    employee_phone_number,
    department_id
) VALUES (
    4,
    'Nadine',
    'Technician',
    2892711355,
    4
);

INSERT INTO employee (
    employee_id,
    employee_name,
    employee_role,
    employee_phone_number,
    department_id
) VALUES (
    5,
    'Justin',
    'Technician',
    2892711344,
    5
);

INSERT INTO street (
    street_id,
    street_name,
    street_number,
    customer_id,
    city_id
) VALUES (
    1,
    'Dundas St',
    150,
    1,
    1
);

INSERT INTO street (
    street_id,
    street_name,
    street_number,
    customer_id,
    city_id
) VALUES (
    2,
    'Dundas St',
    1700,
    2,
    1
);

INSERT INTO street (
    street_id,
    street_name,
    street_number,
    customer_id,
    city_id
) VALUES (
    3,
    'Gardenia Gate',
    2000,
    3,
    2
);

INSERT INTO street (
    street_id,
    street_name,
    street_number,
    customer_id,
    city_id
) VALUES (
    4,
    'Sixth Line',
    1000,
    4,
    2
);

INSERT INTO street (
    street_id,
    street_name,
    street_number,
    customer_id,
    city_id
) VALUES (
    5,
    'Rue St Denis',
    1000,
    5,
    3
);

INSERT INTO issue (
    issue_id,
    date_received,
    priority,
    issue_description,
    verification_status,
    tracking_id,
    customer_id,
    employee_id,
    product_id,
    admin_id
) VALUES (
    1,
    TO_DATE('16/01/2019', 'DD/MM/YYYY'),
    100,
    'Wifi too slow',
    'Yes',
    1,
    1,
    1,
    1,
    1
);

INSERT INTO issue (
    issue_id,
    date_received,
    priority,
    issue_description,
    verification_status,
    tracking_id,
    customer_id,
    employee_id,
    product_id,
    admin_id
) VALUES (
    2,
    TO_DATE('13/04/2019', 'DD/MM/YYYY'),
    90,
    'TV channels missing',
    'No',
    2,
    2,
    2,
    2,
    2
);

INSERT INTO issue (
    issue_id,
    date_received,
    priority,
    issue_description,
    verification_status,
    tracking_id,
    customer_id,
    employee_id,
    product_id,
    admin_id
) VALUES (
    3,
    TO_DATE('06/09/2019', 'DD/MM/YYYY'),
    80,
    'Shattered screen',
    'Yes',
    3,
    3,
    3,
    3,
    3
);

INSERT INTO issue (
    issue_id,
    date_received,
    priority,
    issue_description,
    verification_status,
    tracking_id,
    customer_id,
    employee_id,
    product_id,
    admin_id
) VALUES (
    4,
    TO_DATE('15/10/2020', 'DD/MM/YYYY'),
    100,
    'Screen is blank',
    'No',
    4,
    4,
    4,
    4,
    2
);

INSERT INTO issue (
    issue_id,
    date_received,
    priority,
    issue_description,
    verification_status,
    tracking_id,
    customer_id,
    employee_id,
    product_id,
    admin_id
) VALUES (
    5,
    TO_DATE('17/10/2020', 'DD/MM/YYYY'),
    60,
    'Controller disconnects',
    'No',
    5,
    5,
    5,
    5,
    1
);