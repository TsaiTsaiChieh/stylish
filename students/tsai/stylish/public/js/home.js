const product_container = document.getElementsByClassName('product_container')[0];
const carousel = document.getElementsByClassName('carousel')[0];
attachBannerList(carousel);
attachProductList(product_container);
// localStorage.setItem("lastname", "Smith");

function attachBannerList(carousel) {
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState === 4) {
            var res = JSON.parse(req.responseText);
            let carousel_indicators = document.createElement('ol');
            carousel_indicators.className = 'carousel-indicators';
            let carousel_inner = document.createElement('div');
            carousel_inner.className = 'carousel-inner';

            for (let i = 0; i < res.data.length; i++) {
                let carouselExampleCaptions = document.createElement('li');
                carouselExampleCaptions.setAttribute('data-target', '#carouselExampleCaptions');
                carouselExampleCaptions.setAttribute('data-slide-to', i);
                carousel_indicators.appendChild(carouselExampleCaptions);

                let carousel_item = document.createElement('div');
                carousel_item.setAttribute('class', 'carousel-item');
                if (i == 0) {
                    carousel_item.setAttribute('class', 'carousel-item active');
                }
                carousel_inner.appendChild(carousel_item);

                let banner_img = document.createElement('img');
                banner_img.setAttribute('class', 'd-block w-100');
                banner_img.src = '../campaigns/' + res.data[i].picture;
                carousel_item.appendChild(banner_img);

                let carousel_caption = document.createElement('div');
                carousel_caption.className = 'carousel-caption';
                carousel_item.appendChild(carousel_caption);

                let full_width = document.createElement('div');
                full_width.className = 'full-width';
                carousel_caption.appendChild(full_width);

                let h4 = document.createElement('h4');

                let story_array = res.data[i].story.split(" ");
                var temp = '';
                for (let k = 0; k < story_array.length; k++) {
                    temp += story_array[k] + '<br>';
                }
                h4.innerHTML = temp;
                full_width.appendChild(h4);
            }
            carousel.appendChild(carousel_indicators);
            carousel.appendChild(carousel_inner);
        }
    }
    req.open('get', '/api/1/marketing/campaigns');
    req.send();
}
function attachProductList(product_container) {
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState === 4) {
            var res = JSON.parse(req.responseText);
            // var paging = res.paging;

            for (let i = 0; i < Object.keys(res.data).length; i++) {
                // console.log(res.data[i].id);
                let card = document.createElement('div');
                card.className = 'card';
                let link = document.createElement('a');
                link.href = `/admin/products.html?id=${res.data[i].id}`;
                // link.href = '/admin/products.html';


                let card_img_top = document.createElement('img');
                card_img_top.className = 'card-img-top';
                card_img_top.src = '../uploads/' + res.data[i].main_image;
                link.append(card_img_top); // link

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
                card.appendChild(link);
                // card.appendChild(card_img_top);
                card.appendChild(card_body);
                product_container.appendChild(card);
            }
        }
    };
    req.open('get', '/api/1/products/all');
    req.send();
}





