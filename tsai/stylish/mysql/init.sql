USE stylish;DROP TABLE product;CREATE TABLE product (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(16) NOT NULL,
    title VARCHAR (255) NOT NULL,
    description VARCHAR (255) NOT NULL,
    price INT NOT NULL,
    texture VARCHAR (255),
    wash VARCHAR (255),
    place VARCHAR (255),
    note VARCHAR (255),
    story VARCHAR (255),
    sizes JSON,
    main_image VARCHAR (255),
    images JSON,
    PRIMARY KEY (id)
);CREATE TABLE variant (
    color_code VARCHAR(16),
    name VARCHAR(16),
    size VARCHAR(16),
    stock INT,
    product_id BIGINT UNSIGNED NOT NULL
);CREATE TABLE campaign (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    product_id BIGINT UNSIGNED NOT NULL,
    picture VARCHAR (255),
    story VARCHAR (255),
    PRIMARY KEY (id)
);CREATE TABLE user (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    provider VARCHAR (255) NOT NULL,
    name VARCHAR (127),
    email VARCHAR (127),
    password VARCHAR (31),
    picture VARCHAR (255),
    PRIMARY KEY (id)
);CREATE TABLE token (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    token VARCHAR (127) NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE order_record (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id BIGINT UNSIGNED NOT NULL,
    shipping VARCHAR (32) NOT NULL,
    payment VARCHAR (32) NOT NULL,
    subtotal INT NOT NULL,
    freight INT NOT NULL,
    total INT NOT NULL,
    recipient JSON,
    status VARCHAR(16) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE order_list (
    order_id BIGINT UNSIGNED NOT NULL, 
    product_id BIGINT UNSIGNED NOT NULL, 
    name VARCHAR (255) NOT NULL,
    price INT NOT NULL, 
    color_code VARCHAR (32) NOT NULL, 
    color_name VARCHAR (32) NOT NULL, 
    size VARCHAR(16) NOT NULL,
    qty INT NOT NULL
);
CREATE TABLE payment (
    order_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL, 
    status VARCHAR(16) NOT NULL
);


