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
