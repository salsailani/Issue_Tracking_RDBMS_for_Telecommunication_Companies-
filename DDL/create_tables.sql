CREATE TABLE customer (
    customer_id            INT NOT NULL,
    customer_name          VARCHAR2(30),
    customer_phone_number  INT,
    PRIMARY KEY ( customer_id )
);

CREATE TABLE product (
    product_id           INT NOT NULL,
    product_name         VARCHAR2(30),
    purchase_date        DATE,
    product_description  VARCHAR2(150),
    number_of_reports    INT,
    PRIMARY KEY ( product_id )
);

CREATE TABLE resolution (
    resolution_id     INT NOT NULL,
    resolution_notes  VARCHAR2(150),
    resolution_date   DATE,
    repair_cost       DECIMAL,
    customer_id       INT NOT NULL,
    PRIMARY KEY ( resolution_id ),
    FOREIGN KEY ( customer_id )
        REFERENCES customer ( customer_id )
            ON DELETE CASCADE
);

CREATE TABLE tracking (
    tracking_id      INT NOT NULL,
    tracking_notes   VARCHAR2(150),
    tracking_sdate   DATE,
    tracking_status  VARCHAR2(150),
    PRIMARY KEY ( tracking_id )
);

CREATE TABLE admin (
    admin_id        INT NOT NULL,
    admin_name      VARCHAR2(30),
    admin_password  VARCHAR2(10),
    PRIMARY KEY ( admin_id )
);

CREATE TABLE feedback (
    rating          VARCHAR2(30),
    rating_comment  VARCHAR2(150),
    rating_id       INT NOT NULL,
    resolution_id   INT NOT NULL,
    PRIMARY KEY ( rating_id ),
    FOREIGN KEY ( resolution_id )
        REFERENCES resolution ( resolution_id )
            ON DELETE CASCADE
);

CREATE TABLE province (
    province_id    INT NOT NULL,
    province_name  VARCHAR2(30),
    PRIMARY KEY ( province_id )
);

CREATE TABLE city (
    city_id      INT NOT NULL,
    city_name    VARCHAR2(30),
    province_id  INT NOT NULL,
    PRIMARY KEY ( city_id ),
    FOREIGN KEY ( province_id )
        REFERENCES province ( province_id )
            ON DELETE CASCADE
);

CREATE TABLE department (
    department_id    INT NOT NULL,
    department_name  VARCHAR2(30),
    department_size  INT,
    city_id          INT NOT NULL,
    PRIMARY KEY ( department_id ),
    FOREIGN KEY ( city_id )
        REFERENCES city ( city_id )
            ON DELETE CASCADE
);

CREATE TABLE employee (
    employee_id            INT NOT NULL,
    employee_name          VARCHAR2(30),
    employee_role          VARCHAR2(30),
    employee_phone_number  INT,
    department_id          INT NOT NULL,
    PRIMARY KEY ( employee_id ),
    FOREIGN KEY ( department_id )
        REFERENCES department ( department_id )
            ON DELETE CASCADE
);

CREATE TABLE street (
    street_id      INT NOT NULL,
    street_name    VARCHAR2(150),
    street_number  INT,
    customer_id    INT NOT NULL,
    city_id        INT NOT NULL,
    PRIMARY KEY ( street_id ),
    FOREIGN KEY ( customer_id )
        REFERENCES customer ( customer_id )
            ON DELETE CASCADE,
    FOREIGN KEY ( city_id )
        REFERENCES city ( city_id )
            ON DELETE CASCADE
);

CREATE TABLE issue (
    issue_id             INT NOT NULL,
    date_received        DATE,
    priority             INT,
    issue_description    VARCHAR2(150),
    verification_status  VARCHAR2(50),
    tracking_id          INT NOT NULL,
    customer_id          INT NOT NULL,
    employee_id          INT NOT NULL,
    product_id           INT NOT NULL,
    admin_id             INT NOT NULL,
    PRIMARY KEY ( issue_id ),
    FOREIGN KEY ( tracking_id )
        REFERENCES tracking ( tracking_id )
            ON DELETE CASCADE,
    FOREIGN KEY ( customer_id )
        REFERENCES customer ( customer_id )
            ON DELETE CASCADE,
    FOREIGN KEY ( employee_id )
        REFERENCES employee ( employee_id )
            ON DELETE CASCADE,
    FOREIGN KEY ( product_id )
        REFERENCES product ( product_id )
            ON DELETE CASCADE,
    FOREIGN KEY ( admin_id )
        REFERENCES admin ( admin_id )
            ON DELETE CASCADE
);