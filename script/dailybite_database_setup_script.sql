-- ============================================================
-- BREW & BITE CAFÉ
-- SQL DATA CLEANING PRACTICE DATASET
-- ============================================================

-- ============================================================
-- 1. CREATE PRODUCTS TABLE
-- ============================================================

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_unit_price TEXT NOT NULL,
    product_description VARCHAR(255),
    product_category VARCHAR(50)
);


-- ============================================================
-- 2. CREATE CUSTOMERS TABLE
-- ============================================================

CREATE TABLE customers (
    id INT PRIMARY KEY,
    customer_name TEXT NOT NULL,
    city VARCHAR(100),
    address VARCHAR(255),
    dob TEXT
);


-- ============================================================
-- 3. CREATE STAFF TABLE
-- ============================================================

CREATE TABLE staff (
    id INT PRIMARY KEY,
    staff_name TEXT NOT NULL,
    staff_id VARCHAR(20) UNIQUE NOT NULL,
    date_joined TEXT
);


-- ============================================================
-- 4. CREATE ORDERS TABLE
-- ============================================================

CREATE TABLE orders (
    id INT PRIMARY KEY,

    -- Deliberately stored as TEXT for data-cleaning practice
    order_date TEXT NOT NULL,
    qty TEXT NOT NULL,
    amount TEXT NOT NULL,

    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,

    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (staff_id) REFERENCES staff(id)
);


-- ============================================================
-- 5. INSERT PRODUCTS
-- ============================================================

INSERT INTO products (
    id,
    product_name,
    product_unit_price,
    product_description,
    product_category
)
VALUES
    (1, 'Cappuccino', '5.00', 'Coffee drink', 'Coffee'),
    (2, 'Latte', '10.00', 'Coffee drink', 'Coffee'),
    (3, 'Espresso', '5.00', 'Strong coffee', 'Coffee');


-- ============================================================
-- 6. INSERT CUSTOMERS
-- ============================================================
-- Deliberately introduced:
-- - Leading/trailing spaces
-- - Inconsistent capitalization
-- - Unnecessary prefixes/suffixes
-- ============================================================

INSERT INTO customers (
    id,
    customer_name,
    city,
    address,
    dob
)
VALUES
    (1,  '  Seun Blue  ',       'Lagos', '12 Marina Road',        '1997-04-01'),
    (2,  'JOHN COLE',           'Abuja', '24 Garki Road',         '1990-08-02'),
    (3,  'David Anderson',      'Lagos', '15 Allen Avenue',       '1995-11-12'),
    (4,  '  SARAH WILLIAMS',    'Abuja', '8 Wuse Street',         '1998-03-25'),
    (5,  'Michael Johnson ',    'Lagos', '42 Ikeja Road',         '1989-07-18'),
    (6,  'customer: Anabel Hilton', 'Abuja', '17 Maitama Avenue', '1996-05-09'),
    (7,  'GRACE THOMPSON',      'Lagos', '31 Yaba Road',          '1993-09-14'),
    (8,  ' Daniel Roberts ',    'Abuja', '6 Asokoro Crescent',    '1991-12-03'),
    (9,  'Emily Carter',        'Lagos', '22 Lekki Phase 1',      '1999-01-27'),
    (10, 'CUSTOMER - James Morgan', 'Abuja', '19 Kubwa Road',     '1988-06-11'),
    (11, 'Olivia Bennett  ',    'Lagos', '7 Victoria Island Road','1997-10-20'),
    (12, 'SAMUEL WILSON',       'Abuja', '14 Gwarinpa Street',    '1994-02-16'),
    (13, ' Sophia Martin ',     'Lagos', '28 Surulere Avenue',    '2000-04-05'),
    (14, 'Benjamin Harris',     'Abuja', '11 Jabi Road',          '1992-08-30'),
    (15, '  CHARLOTTE EVANS ',  'Lagos', '35 Ikoyi Crescent',     '1996-11-22');


-- ============================================================
-- 7. INSERT STAFF
-- ============================================================

INSERT INTO staff (
    id,
    staff_name,
    staff_id,
    date_joined
)
VALUES
    (1, 'Mark James', 'ST-001', '2024-01-15 09:00:00'),
    (2, ' Anabel Smith ', 'ST-002', '2025-03-10 10:30:00');


-- ============================================================
-- 8. INSERT ORDERS
-- ============================================================
-- Deliberately introduced:
-- - Numbers stored as TEXT
-- - Extra spaces
-- - Currency symbols
-- - Dates stored as TEXT
-- ============================================================

INSERT INTO orders (
    id,
    order_date,
    qty,
    amount,
    product_id,
    customer_id,
    staff_id
)
VALUES
    (1,  '2026-08-22', ' 2 ',   '10.00',       1,  1,  2),
    (2,  '2026-08-22', '1',     '₦10.00',      2,  2,  1),
    (3,  '2026-08-23', ' 3',    '15.00 ',      3,  1,  2),
    (4,  '2026-08-23', '1 ',    '₦5.00',       1,  2,  1),
    (5,  '2026-08-24', '2',     ' ₦20.00 ',    2,  1,  1),
    (6,  '2026-08-24', ' 1 ',   '5.00',        3,  3,  2),
    (7,  '2026-08-25', '2 ',    '10.00',       1,  4,  1),
    (8,  '2026-08-25', ' 1',    ' ₦10.00',     2,  5,  2),
    (9,  '2026-08-26', '3',     '15.00',       3,  6,  1),
    (10, '2026-08-26', '2 ',    '₦10.00 ',     1,  7,  2),
    (11, '2026-08-27', ' 1 ',   '10.00',       2,  8,  1),
    (12, '2026-08-27', '2',     '₦10.00',      3,  9,  2),
    (13, '2026-08-28', ' 1',    '5.00 ',       1,  10, 1),
    (14, '2026-08-28', '2 ',    ' ₦20.00 ',    2,  11, 2),
    (15, '2026-08-29', ' 3',    '15.00',       3,  12, 1),
    (16, '2026-08-29', '1',     '₦5.00',       1,  13, 2),
    (17, '2026-08-30', ' 2 ',   '20.00',       2,  14, 1),
    (18, '2026-08-30', '1 ',    ' ₦5.00',      3,  15, 2),
    (19, '2026-08-31', '2',     '10.00',       1,  3,  1),
    (20, '2026-08-31', ' 1',    '₦10.00',      2,  6, 2),
    (21, '2026-09-01', '3 ',    '15.00 ',      3,  7, 1),
    (22, '2026-09-01', ' 2',    '₦10.00',      1,  9, 2),
    (23, '2026-09-02', '1',     ' ₦10.00 ',    2,  11, 1),
    (24, '2026-09-02', ' 2 ',   '10.00',       3,  4, 2),
    (25, '2026-09-03', '1 ',    '₦5.00',       1,  15, 1);