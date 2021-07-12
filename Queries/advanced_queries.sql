SELECT
    customer.customer_name,
    customer.customer_phone_number,
    issue.issue_id,
    resolution.resolution_notes,
    admin.admin_name
FROM
    customer,
    resolution,
    issue,
    admin
WHERE
        issue.verification_status = 'No'
    AND customer.customer_id = issue.customer_id
    AND customer.customer_id = resolution.customer_id
    AND issue.admin_id = admin.admin_id;
/*------------------------------------------------*/
SELECT
    tracking.tracking_notes,
    tracking.tracking_sdate,
    customer.customer_name
FROM
    customer,
    tracking,
    issue
WHERE
    tracking.tracking_status LIKE 'War%'
    AND tracking.tracking_id = issue.tracking_id
    AND customer.customer_id = issue.customer_id;
/*------------------------------------------------*/
SELECT
    COUNT(customer_id) "Number of Customers in the DB"
FROM
    customer;
/*------------------------------------------------*/
SELECT
    city.city_name,
    COUNT(customer.customer_name) AS "Number of Customers"
FROM
    customer,
    street,
    city,
    province
WHERE
        customer.customer_id = street.customer_id
    AND city.city_id = street.city_id
    AND city.province_id = province.province_id
GROUP BY
    city.city_name
HAVING
    COUNT(customer.customer_name) >= 2;
/*------------------------------------------------*/
SELECT
    'Customer'     AS type,
    customer_name  AS name,
    customer.customer_phone_number
FROM
    customer
UNION
SELECT
    'Employee',
    employee.employee_name,
    employee.employee_phone_number
FROM
    employee;   
/*------------------------------------------------*/   
SELECT
    'Customer'     AS type,
    customer_name  AS name
FROM
    customer
UNION ALL
SELECT
    'Employee' AS type,
    employee.employee_name
FROM
    employee
UNION ALL
SELECT
    'Admin' AS type,
    admin.admin_name
FROM
    admin;
/*------------------------------------------------*/   
SELECT
    city.city_name,
    round(AVG(department_size), 0) AS "Average Number of Employees"
FROM
    department,
    city
WHERE
    department.city_id = city.city_id
GROUP BY
    city.city_name
HAVING
    AVG(department_size) > 20;
/*------------------------------------------------*/
SELECT
    customer_name AS name
FROM
    customer
MINUS
SELECT
    employee.employee_name
FROM
    employee
MINUS
SELECT
    admin.admin_name
FROM
    admin;
/*------------------------------------------------*/
SELECT
    issue.date_received,
    issue.priority,
    issue.issue_description
FROM
    issue
WHERE
    NOT EXISTS (
        SELECT
            *
        FROM
            tracking
        WHERE
                tracking.tracking_id = issue.tracking_id
            AND tracking_notes LIKE 'Ye%'
    );