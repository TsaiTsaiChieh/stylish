const form_control = document.getElementsByClassName('form-control')[0];
form_control.addEventListener('keypress', function (e) {
    if (e.keyCode == 13) {
        window.location.href = `./?category=search&keyword=${form_control.value}&paging=0`;
    }
});
const search_btn = document.getElementsByClassName('search-btn')[0];
search_btn.addEventListener('click', function (e) {
    window.location.href = `./?category=search&keyword=${form_control.value}&paging=0`;
});
let search_click = document.getElementsByClassName('search_click')[0];

if (search_click) {
    search_click.addEventListener('click', function (e) {
        let mobile_search = document.getElementsByClassName('mobile_search')[0];
        let search = document.getElementsByClassName('search')[0];
        mobile_search.style.display = 'block';
        search_click.style.display = 'none';
        search.focus();
        search.addEventListener('blur', function (e) {
            mobile_search.style.display = 'none';
            search_click.style.display = 'block';
        });
    });
}