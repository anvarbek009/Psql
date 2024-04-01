CREATE TABLE pochta_index (
    id BIGSERIAL PRIMARY KEY,
    index_code bigint
);

CREATE TABLE school (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    address VARCHAR,
    type_school VARCHAR
);

CREATE TABLE address (
    id BIGSERIAL PRIMARY KEY,
    viloyat VARCHAR,
    tuman VARCHAR,
    mfy VARCHAR,
    uy VARCHAR
);

CREATE TABLE person (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    age SERIAL,
    address_index_id BIGSERIAL REFERENCES pochta_index(id) UNIQUE,
    address_id BIGSERIAL REFERENCES address(id),
    school_id BIGSERIAL REFERENCES school(id)
);

INSERT INTO
    pochta_index (index_code)
VALUES
    (123456),
    (789012),
    (345678);

INSERT INTO
    school (name, address, type_school)
VALUES
    ('30-school', 'Unkurgan', 'Davlatniki'),
    ('Al-xorazmiy', 'Yunusobod', 'Xususiy'),
    ('246-school', 'Sabzavot', 'Davlatniki');

INSERT INTO
    address (viloyat, tuman, mfy, uy)
VALUES
    ('Toshkent', 'Yunusobod', 'MFY1', '12A'),
    ('Samarqand', 'Oqoltin', 'MFY2', '34B'),
    ('Namangan', 'Chortoq', 'MFY3', '56C');

INSERT INTO
    person (
        name,
        age,
        address_index_id,
        address_id,
        school_id
    )
VALUES
    ('John Doe', 25, 1, 1, 1),
    ('Alice Smith', 30, 2, 2, 2),
    ('Bob Johnson', 35, 3, 3, 3);

-- 2-vazifa
CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    age BIGINT,
    email VARCHAR
);

CREATE TABLE products (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    price BIGINT,
    make VARCHAR,
    dokon BIGSERIAL
);

CREATE TABLE dokon (
    id BIGSERIAL PRIMARY KEY,
    product_id BIGINT REFERENCES products(id),
    address VARCHAR,
    owner_id BIGINT REFERENCES owners(id)
);

INSERT INTO
    owners (name, age, email)
VALUES
    ('John Doe', 30, 'john@example.com'),
    ('Alice Smith', 25, 'alice@example.com'),
    ('Bob Johnson', 35, 'bob@example.com');

INSERT INTO
    products (name, price, make, dokon)
VALUES
    ('Laptop', 1200, 'HP', 1),
    ('Smartphone', 800, 'Samsung', 2),
    ('Headphones', 100, 'Sony', 3);

INSERT INTO
    dokon (product_id, address, owner_id)
VALUES
    (1, '123 Main St', 1),
    (2, '456 Elm St', 2),
    (3, '789 Oak St', 3);