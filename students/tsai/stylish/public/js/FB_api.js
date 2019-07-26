// This is called with the results from from FB.getLoginStatus().
function statusChangeCallback(response) {
    // console.log('statusChangeCallback');
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
        // Logged into your app and Facebook.
        // testAPI();
    } else {
        // The person is not logged into your app or we are unable to tell.
        // document.getElementById('status').innerHTML = 'Please log ' +
        //     'into this app.';
    }
}

// This function is called when someone finishes with the Login
// Button.  See the onlogin handler attached to it in the sample
// code below.
function checkLoginState() {
    FB.getLoginStatus(function (response) { // 觸發對 Facebook 的呼叫來取得登入狀態
        statusChangeCallback(response);
        // console.log(response);
        // my code here:
        const provider = 'facebook';
        const fb_id = response.authResponse.userID;
        const fb_token = response.authResponse.accessToken;

        // Front End send facebook access token to User Sign In API supported by backend.
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "/admin/signin");
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 & this.status === 200) {
                var res = JSON.parse(xmlhttp.responseText);
                const token = res.data.access_token;
                sessionStorage.setItem('token', token);
                document.getElementsByClassName("message")[1].innerHTML = 'FB 登入成功';
                window.location.href = 'index.html';
            }
        }
        xmlhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xmlhttp.send(JSON.stringify({ provider, fb_id, fb_token }));


    });
}

window.fbAsyncInit = function () {
    FB.init({
        appId: '2263463080567166',
        cookie: true,  // enable cookies to allow the server to access 
        // the session
        xfbml: true,  // parse social plugins on this page
        version: 'v3.3' // The Graph API version to use for the call
    });

    // Now that we've initialized the JavaScript SDK, we call 
    // FB.getLoginStatus().  This function gets the state of the
    // person visiting this page and can return one of three states to
    // the callback you provide.  They can be:
    //
    // 1. Logged into your app ('connected')
    // 2. Logged into Facebook, but not your app ('not_authorized')
    // 3. Not logged into Facebook and can't tell if they are logged into
    //    your app or not.
    //
    // These three cases are handled in the callback function.
    // 在頁面載入時用來檢查用戶登入狀態
    FB.getLoginStatus(function (response) {
        statusChangeCallback(response);
    });
    // FB.login(function (response) {
    //     // console.log('log:', response);

    //     // Handle the response object, like in statusChangeCallback() in our demo
    //     // code.
    //     if (response.status === 'connected') {
    //         console.log(response);

    //     } else {
    //         // The person is not logged into this app or we are unable to tell. 
    //     }
    // }, { scope: 'public_profile,email' });

};

// Load the SDK asynchronously
(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// Here we run a very simple test of the Graph API after login is
// successful.  See statusChangeCallback() for when this call is made.
function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function (response) {
        console.log('Successful login for: ' + response.name);
        // document.getElementById('status').innerHTML =
        //     'Thanks for logging in, ' + response.name + '!</br>';

    });
}