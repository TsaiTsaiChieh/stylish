const container = document.getElementsByClassName('container')[0];
productInformation(container);
function productInformation(container) {
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get('id');
    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState === 4) {
            var res = JSON.parse(req.responseText);
            // createElement
            let card = document.createElement('div');
            let row = document.createElement('div');
            let main_img = document.createElement('div');
            let card_img = document.createElement('img');
            let col_md_6 = document.createElement('div');
            let details = document.createElement('div');
            let title = document.createElement('h5');
            let p_id = document.createElement('p');
            let price = document.createElement('p');
            let hr = document.createElement('hr');
            let chose_colors = document.createElement('div');
            let color_title = document.createElement('div');
            let sizes = document.createElement('div');
            let size_title = document.createElement('div');
            let qty = document.createElement('div');
            let qty_title = document.createElement('div');
            let qty_button = document.createElement('div');
            let op_plus = document.createElement('div');
            let op_minus = document.createElement('div');
            let value = document.createElement('div');
            let buy_button = document.createElement('button');
            let separator = document.createElement('div');
            let sep_title = document.createElement('p');
            let line = document.createElement('div');
            let description = document.createElement('div');
            let story = document.createElement('p');


            // setAttribute
            card.setAttribute('class', 'card mb-3');
            row.setAttribute('class', 'row');
            main_img.setAttribute('class', 'main-img col-md-6');
            card_img.setAttribute('class', 'card-img');
            col_md_6.setAttribute('class', 'col-md-6');
            details.setAttribute('class', 'card-body details');
            title.setAttribute('class', 'title card-text');
            p_id.setAttribute('class', 'id card-text');
            price.setAttribute('class', 'price card-text');
            chose_colors.setAttribute('class', 'chose-colors card-item');
            color_title.setAttribute('class', 'color-title card-text');
            sizes.setAttribute('class', 'sizes card-item');
            size_title.setAttribute('class', 'size-title card-text');
            qty.setAttribute('class', 'qty card-item');
            qty_title.setAttribute('class', 'qty-title card-text');
            qty_button.setAttribute('class', 'qty-button');
            op_plus.setAttribute('class', 'op');
            op_plus.setAttribute('data-value', '-1');
            op_minus.setAttribute('class', 'op');
            op_minus.setAttribute('data-value', '+1');
            value.setAttribute('class', 'value');
            buy_button.setAttribute('class', 'buy_button');
            separator.setAttribute('class', 'separator');
            sep_title.setAttribute('class', 'title');
            line.setAttribute('class', 'line');
            description.setAttribute('class', 'description');
            story.setAttribute('class', 'story');
            // setValue
            card_img.src = '../uploads/' + res.data[0].main_image;
            title.innerHTML = res.data[0].title;
            p_id.innerHTML = res.data[0].id;
            price.innerHTML = 'TWD. ' + res.data[0].price;
            color_title.innerHTML = '顏色&nbsp;&nbsp;&nbsp;|';
            size_title.innerHTML = '尺寸&nbsp;&nbsp;&nbsp;|';
            qty_title.innerHTML = '數量&nbsp;&nbsp;&nbsp;|';
            op_plus.innerHTML = '+';
            value.innerHTML = '1';
            op_minus.innerHTML = '-';
            buy_button.innerHTML = '直接購買';
            sep_title.innerHTML = '更多產品資訊';
            story.innerHTML = res.data[0].story;


            chose_colors.appendChild(color_title);
            for (let i = 0; i < res.data[0].colors.length; i++) {
                let chose_color = document.createElement('div');
                chose_color.setAttribute('class', 'chose-color');
                chose_color.style.background = '#' + res.data[0].colors[i].code;
                chose_colors.appendChild(chose_color);
            }
            sizes.appendChild(size_title);
            for (let i = 0; i < res.data[0].sizes.length; i++) {

                let size = document.createElement('div');
                size.setAttribute('class', 'size');
                if (i == 0) size.setAttribute('class', 'size active');
                size.innerHTML = res.data[0].sizes[i];
                sizes.appendChild(size);
            }
            description.appendChild(story);
            for (let i = 0; i < res.data[0].images.length; i++) {
                let img = document.createElement('img');
                img.src = '../uploads/' + res.data[0].images[i];
                description.appendChild(img);
            }
            // appendChild
            container.appendChild(card);
            card.appendChild(row);
            row.appendChild(main_img);
            main_img.appendChild(card_img);
            card.appendChild(col_md_6);
            col_md_6.appendChild(details);

            row.appendChild(col_md_6);
            details.appendChild(title);
            details.appendChild(p_id);
            details.appendChild(price);
            details.appendChild(hr);
            details.append(chose_colors);
            details.append(sizes);
            qty_button.appendChild(op_plus);
            qty_button.appendChild(value);
            qty_button.appendChild(op_minus);
            qty.appendChild(qty_title);
            qty.appendChild(qty_button);
            details.appendChild(qty);
            details.appendChild(buy_button);
            separator.appendChild(sep_title);
            separator.appendChild(line);
            container.appendChild(separator);
            container.appendChild(description);

            // set header category

            if (res.data[0].category == 'women') {
                document.getElementsByClassName('nav-link')[0].style.color = '#8b572a';
            }
            else if (res.data[0].category == 'men') {
                document.getElementsByClassName('nav-link')[1].style.color = '#8b572a';
            }
            else {
                document.getElementsByClassName('nav-link')[2].style.color = '#8b572a';
            }

        }
    }

    req.open('get', `/api/1/products/details?id=${id}`);
    req.send();
}
