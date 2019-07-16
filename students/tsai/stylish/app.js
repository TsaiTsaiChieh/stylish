const express = require('express');
const app = express();
const body_parser = require('body-parser');


app.use(body_parser.urlencoded({ extended: false }));
app.use('/admin', express.static('public'));
app.use('/uploads', express.static('uploads'));

const mainRouters = require('./routes');
app.use('/', mainRouters);
const adminRouters = require('./routes/admin');
app.use('/', adminRouters);
const productsRouters = require('./routes/products');
app.use('/api/1/', productsRouters);

app.get('/', (req, res) => {
    res.send('Tsai, Tsai-Chieh');
});
app.listen(3000, () => console.log('Server running on port 3000'));