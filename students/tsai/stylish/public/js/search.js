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