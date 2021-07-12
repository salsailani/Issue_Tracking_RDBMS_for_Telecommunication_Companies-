SELECT
    *
FROM
    product;
/*------------------------------------------------*/
SELECT
    street_name,
    street_number
FROM
    street;
/*------------------------------------------------*/
SELECT
    customer_name          "Name",
    customer_phone_number  "Phone"
FROM
    customer;
/*------------------------------------------------*/
SELECT DISTINCT
    city.city_name,
    street.street_number
FROM
    street,
    city
WHERE
    city.city_id = street.city_id;
/*------------------------------------------------*/
SELECT
    product_name,
    purchase_date,
    number_of_reports
FROM
    product
ORDER BY
    purchase_date DESC,
    number_of_reports ASC;
/*------------------------------------------------*/
SELECT
    priority,
    issue_description,
    verification_status
FROM
    issue
WHERE
    verification_status <> 'No'
ORDER BY
    priority ASC;
/*------------------------------------------------*/
SELECT
    priority,
    issue_description,
    date_received
FROM
    issue
WHERE
    verification_status <> 'No'
    OR priority > 90
ORDER BY
    priority DESC,
    date_received DESC;
/*------------------------------------------------*/
SELECT
    admin_id,
    admin_name,
    admin_password
FROM
    admin
WHERE
    admin_id > 2
ORDER BY
    admin_password DESC;
/*------------------------------------------------*/
SELECT
    rating_comment,
    rating
FROM
    feedback
WHERE
    rating > 5;
/*------------------------------------------------*/
SELECT
    *
FROM
    employee
ORDER BY
    department_id DESC;
/*------------------------------------------------*/
SELECT
    tracking_id,
    tracking_notes,
    tracking_sdate
FROM
    tracking
WHERE
    tracking_id > 3
ORDER BY
    tracking_sdate DESC;