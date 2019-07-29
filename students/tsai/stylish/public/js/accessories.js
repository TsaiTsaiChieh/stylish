const product_container = document.getElementsByClassName('product_container')[0];
const carousel = document.getElementsByClassName('carousel')[0];
const page = document.getElementById('page');
const accessories_link = document.getElementsByClassName('nav-link')[2];
const urlParams = new URLSearchParams(window.location.search);
const paging = urlParams.get('paging');
attachBannerList(carousel);
attachAccessoriesList(product_container);
attachPaging(page);

function attachBannerList(carousel) {
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState === 4) {
            var res = JSON.parse(req.responseText);
            // Create element
            let carousel_indicators = document.createElement('ol');
            let carousel_inner = document.createElement('div');
            carousel_indicators.className = 'carousel-indicators';
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
function attachAccessoriesList(product_container) {
    const brown_color = '#8b572a'
    accessories_link.style.color = brown_color;
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState === 4) {
            var res = JSON.parse(req.responseText);

            for (let i = 0; i < Object.keys(res.data).length; i++) {
                // create elememt
                let card = document.createElement('div');
                let link = document.createElement('a');
                let card_img_top = document.createElement('img');
                let card_body = document.createElement('div');

                let colors = document.createElement('div');
                let product_name = document.createElement('p');
                let price = document.createElement('p');

                // set attributes
                card.className = 'card';
                card_img_top.className = 'card-img-top';
                card_img_top.src = '../uploads/' + res.data[i].main_image;
                link.href = `/admin/products.html?id=${res.data[i].id}`;
                card_body.className = 'card-body';
                colors.className = 'colors';

                link.append(card_img_top); // link

                for (let j = 0; j < res.data[i].colors.length; j++) {
                    let color = document.createElement('div');
                    color.className = 'color';
                    color.style.background = '#' + res.data[i].colors[j].code;
                    colors.appendChild(color);
                }
                card_body.appendChild(colors);
                product_name.className = 'product-name';
                product_name.innerHTML = res.data[i].title;
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
        //當 user 輸入無效 product id 時，導入 index.html 頁面
        else if (req.status === 404) {
            window.location.href = 'accessories.html?paging=0';
        }
    };
    req.open('get', `/api/1/products/accessories?paging=${paging}`);
    req.send();
}
function attachPaging(page) {
    var show_num = 3;
    let pagination = document.createElement('ul');
    // set attribute
    pagination.setAttribute('class', 'pagination');
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState == 4) {
            var { count } = JSON.parse(req.responseText);
            for (let i = 0; i < Math.ceil(count / show_num); i++) {
                let page_link = document.createElement('a');
                let page_item = document.createElement('li');
                page_item.setAttribute('class', 'page-item');
                page_link.setAttribute('class', 'page-link');
                if (i == paging) page_item.setAttribute('class', 'page-item active');
                page_link.innerHTML = i + 1;
                page_link.href = `accessories.html?paging=${i}`;
                page_item.appendChild(page_link);
                pagination.appendChild(page_item);
            }

        }
    };
    req.open('get', '/api/1/products/getCount?category=accessories');
    req.send();
    page.append(pagination);
}