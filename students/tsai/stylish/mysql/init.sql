USE stylish;--
-- product
CREATE TABLE product (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR (255) NOT NULL,
    description VARCHAR (255) NOT NULL,
    price INT NOT NULL,
    texture VARCHAR (255),
    wash VARCHAR (255),
    place VARCHAR (255),
    note VARCHAR (255),
    story VARCHAR (255),
    colors JSON,
    sizes JSON,
    variants JSON,
    main_image VARCHAR (255),
    images JSON,
    PRIMARY KEY (id)
);--
-- insert data
INSERT INTO
    product (
        id,
        title,
        description,
        price,
        texture,
        wash,
        place,
        note,
        story,
        colors,
        sizes,
        variants,
        main_image,
        images
    ) VALUE (
        '1',
        '厚實毛呢格子外套',
        '高抗寒素材選用，保暖也時尚有型',
        2200,
        '棉、聚脂纖維',
        '手洗（水溫40度)',
        '韓國',
        '實品顏色以單品照為主',
        '你絕對不能錯過的超值商品',
        JSON_ARRAY(
            JSON_OBJECT(
                'code',
                '334455',
                'name',
                '深藍'
            ),
            JSON_OBJECT(
                'code',
                'ffffff',
                'name',
                '白色'
            )
        ),
        JSON_ARRAY('S', 'M'),
        JSON_ARRAY(
            JSON_OBJECT(
                'color_code',
                '334455',
                'size',
                'S',
                'stock',
                5
            ),
            JSON_OBJECT(
                'color_code',
                'FFFFFF',
                'size',
                'M',
                'stock',
                0
            )
        ),
        'https://stylish.com/main.jpg',
        JSON_ARRAY(
            'https://stylish.com/0.jpg',
            'https://stylish.com/1.jpg',
            'https://stylish.com/2.jpg'
        )
    );-- INSERT INTO
    --     product (id) VALUE(1);-- /* insert data */
    -- INSERT INTO product (`id`, `title`, `description`, `price`, `colors`, `sizes`)
    -- VALUES('1', 'Jeans', 'about jeans', '100', JSON_OBJECT("green", "#008000", "blue", "#0000ff"), JSON_ARRAY("160 cm", "165 cm"));
    -- INSERT INTO product (`id`, `title`, `description`, `price`, `colors`, `sizes`, `note`)
    -- VALUES('2', 'Jeans', 'about jeans', '100', JSON_OBJECT("green", "#008000", "blue", "#0000ff"), JSON_ARRAY("160 cm", "165 cm"), 'women');
    -- INSERT INTO product (`id`, `title`, `description`, `price`, `colors`, `sizes`, `note`)
    -- VALUES('3', 'Jeans', 'about jeans', '100', JSON_OBJECT("green", "#008000", "blue", "#0000ff"), JSON_ARRAY("160 cm", "165 cm"), 'women');