checkToken();
logout();
// guestMessage();
// updataProfile();
function checkToken() {
    const token = sessionStorage.getItem('token');
    if (token == null) {
       window.location.href = 'sign.html';  
    }
    else {
        updataProfile();
    }
    
}
function updataProfile() {
    let picture = document.getElementsByClassName('picture')[0];
    let provider = document.getElementsByClassName('provider')[0];
    let name = document.getElementsByClassName('name')[0];
    let email = document.getElementsByClassName('email')[0];

    var req = new XMLHttpRequest();
    req.onreadystatechange = function () {
        if (req.readyState == 4 & this.status == 200) {
            var res = JSON.parse(req.responseText);
            if (res.data.provider == 'native') {
                picture.src = '/users/' + res.data.picture;
            } else {
                picture.src = res.data.picture;
            }
            var temp_first = res.data.provider.substring(0,1).toUpperCase();
            var temp_remain = res.data.provider.substring(1,res.data.provider.length);
            var provider_cat = temp_first.concat(temp_remain);
        
            
            provider.innerHTML = provider_cat;
            name.innerHTML = res.data.name;
            email.innerHTML = res.data.email;
    }  
}; 
req.open('get', '/api/1/user/profile');
req.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
req.setRequestHeader('Authorization', 'Bearer ' + sessionStorage.getItem('token'));
req.send();
}

function logout() {
    const logout_btn = document.getElementsByClassName('logout')[0];
    logout_btn.addEventListener('click', function() {
        sessionStorage.removeItem('token');
        window.location.href = 'index.html';
    });
}

// function guestMessage() {
//     var req = new XMLHttpRequest ();
//     req.onreadystatechange = function() {
//         if (res.readyState == 4 & req.status === 405) {
//             let msg = document.getElementsByClassName('profile')[0].getElementsByTagName('h2')[0];
//             console.log(msg);
            
//         }
//     };
// }