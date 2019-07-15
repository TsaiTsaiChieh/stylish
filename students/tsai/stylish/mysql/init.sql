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
);-- insert data
INSERT INTO
    product (
        id,
        category,
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
        'women',
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
    );