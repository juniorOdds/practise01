var googleUser = {};
var auth2;

var startApp = function () {
    gapi.load('auth2', function () {
        // Retrieve the singleton for the GoogleAuth library and set up the client.
        auth2 = gapi.auth2.init({
            client_id: '143770397779-9id4b8l7kusb7gkv1d44krvfvc922itk.apps.googleusercontent.com',
            cookiepolicy: 'single_host_origin',
            // Request scopes in addition to 'profile' and 'email'
            //scope: 'additional_scope'
        });
        attachSignin(document.getElementById('button'));
    });
};

function attachSignin(element) {

    auth2.attachClickHandler(element, {},
        function (googleUser) {
            document.getElementById('name').innerText = "Signed in: " +
                googleUser.getBasicProfile().getName();
            console.log(googleUser)
        }, function (error) {
            alert(JSON.stringify(error, undefined, 2));
            console.log()
        });

}

document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('button').onclick = function () {
        startApp()
    };
});
