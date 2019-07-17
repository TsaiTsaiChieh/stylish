const express = require('express');
const router = express.Router();
const multer = require('multer'); // npm install --save multer
const db = require('../public/js/db');

router.get('/admin', (req, res) => {
    res.send('admin');
});

// Set storage
var storage = multer.diskStorage({
    // 設定上傳後文件路徑，uploads 資料夾會自動建立
    destination: function (req, files, cb) {
        cb(null, 'uploads');
    },
    // 給上傳文件重新命名
    filename: function (req, files, cb) {
        files.originalname = files.originalname.replace('.jpg', '') + '_' + Date.now() + '.jpg';
        cb(null, files.originalname);
    }
});
// Build Product Management Page
var upload = multer({ storage: storage }); // 設定添加到 multer 對象
var imageLoad = upload.fields([{ name: 'products_main_image', maxCount: 1 }, { name: 'products_images', maxCount: 3 }]);
router.post('/admin/product.html', imageLoad, (req, res) => {
    const category = req.body.products_category;
    const title = req.body.products_title;
    const description = req.body.products_description;
    const price = req.body.products_price;
    const texture = req.body.products_texture;
    const wash = req.body.products_wash;
    const place = req.body.products_place;
    const note = req.body.products_note;
    const story = req.body.products_story;
    const sizes = JSON.stringify(req.body.products_sizes.replace(/\s+/g, "").split(','));
    const variants_code = req.body.products_variants_code.replace(/\s+/g, "").split(',');
    const variants_name = req.body.products_variants_name.replace(/\s+/g, "").split(',');
    const variants_size = req.body.products_variants_size.replace(/\s+/g, "").split(',');
    const variants_stock = req.body.products_variants_stock.replace(/\s+/g, "").split(',');
    const main_image = req.files.products_main_image[0].originalname;
    var product_id = 0;

    // files format
    var images = [];
    for (let i = 0; i < req.files.products_images.length; i++) {
        let tmp = req.files.products_images[i].originalname;
        images.push(tmp);
    }
    images = JSON.stringify(images);

    let products = { category, title, description, price, texture, wash, place, note, story, sizes, main_image, images };
    let sql_insert_product = `INSERT INTO product SET ?`;


    db.query(sql_insert_product, products, (err, result) => {
        if (err) throw err;
        else console.log(result);
        product_id = result.insertId;

        for (let i = 0; i < variants_code.length; i++) {
            let insert_variant = `INSERT INTO variant SET ?`;
            // result[0].id print the search result id
            let variants = { color_code: variants_code[i], name: variants_name[i], size: variants_size[i], stock: variants_stock[i], product_id };
            db.query(insert_variant, variants, (err, result) => {
                if (err) throw err;
                else console.log('insert variant:', result);
            });
        }
    });
    res.send('Add a product successfully.');
});

// Build Marketing Campaigns Management Page
// Set Campaigns storage
var storage_campaigns = multer.diskStorage({
    // 設定上傳後文件路徑，campaigns 資料夾會自動建立
    destination: function (req, file, cb) {
        cb(null, 'campaigns');
    },
    // 給上傳文件重新命名
    filename: function (req, file, cb) {
        file.originalname = file.originalname.replace('.jpg', '') + '_' + Date.now() + '.jpg';
        cb(null, file.originalname);
    }
});
var campaigns = multer({ storage: storage_campaigns }); // 設定添加到 multer 對象
// var campaignLoad = campaigns.fields([{ name: 'picture', maxCount: 1 }]);
router.post('/admin/campaign.html', campaigns.single('picture'), (req, res) => {
    const { product_id } = req.body;
    // Picture URL is http://localhost/campaigns/filename.jpg
    const picture = req.file.filename;
    const { story } = req.body;
    let campaign = { product_id, picture, story }; // campaign insert data
    let sql_insert_campaign = `INSERT INTO campaign SET ?`;
    db.query(sql_insert_campaign, campaign, (err, result) => {
        if (err) throw err;
        else console.log('insert campaign:', result);
    });
    res.send('Add a campaign successfully.');

});
module.exports = router;