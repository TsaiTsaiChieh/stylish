const product_container = document.getElementsByClassName('product_container')[0];

{/* <div class="card">
                <img src="../uploads/main_1563069871770.jpg" class="card-img-top">
                <div class="card-body">
                    <div class="colors">
                        <div class="color"></div>
                        <div class="color"></div>
                    </div>
                    <p class="product-name">前開衩扭結洋裝</p>
                    <p class="price">TWD. 799</p>
                </div>
            </div> */}
var req = new XMLHttpRequest();
req.onreadystatechange = function () {
    if (req.readyState === 4) {
        var res = JSON.parse(req.responseText);
        var paging = res.paging;
        // console.log('size:', req.responseText.data[0].length);


        for (let i = 0; i < Object.keys(res.data).length; i++) {

            console.log('data:', res.data[i].images[0]);
            let card = document.createElement('div');
            card.className = 'card';

            let card_img_top = document.createElement('img');
            card_img_top.className = 'card-img-top';
            card_img_top.src = '../uploads/' + res.data[i].main_image;

            let card_body = document.createElement('div');
            card_body.className = 'card-body';
            // color
            let colors = document.createElement('div');
            colors.className = 'colors';
            for (let j = 0; j < res.data[i].colors.length; j++) {

                let color = document.createElement('div');
                color.className = 'color';
                color.style.background = '#' + res.data[i].colors[j].code;
                colors.appendChild(color);
            }
            card_body.appendChild(colors);
            let product_name = document.createElement('p');
            product_name.className = 'product-name';
            product_name.innerHTML = res.data[i].title;
            let price = document.createElement('p');
            price.className = 'price';
            price.innerHTML = 'TWD. ' + res.data[i].price;
            card_body.appendChild(product_name);
            card_body.appendChild(price);
            card.appendChild(card_img_top);
            card.appendChild(card_body);
            product_container.appendChild(card);
        }

        // document.getElementsByClassName('test')[0].innerHTML = res.data;
        console.log(res.data);





    }
};
req.open('get', '/api/1/products/all');
req.send();
// function attachProductList(product_container) {

// }


