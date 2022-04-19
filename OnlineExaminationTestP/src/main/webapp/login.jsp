<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
          <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id"
	content="688515869945-eq4e8ij7hui82ksi28kv7pbk4hv4hqjf.apps.googleusercontent.com">
        
        
        <title>OES | Login</title>
        <style>
           #logreg-forms{
    width:412px;
    margin:10vh auto;
    background-color:#f3f3f3;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
    transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
#logreg-forms form {
    width: 100%;
    max-width: 410px;
    padding: 15px;
    margin: auto;
}
#logreg-forms .form-control {
    position: relative;
    box-sizing: border-box;
    height: auto;
    padding: 10px;
    font-size: 16px;
}
#logreg-forms .form-control:focus { z-index: 2; }
#logreg-forms .form-signin input[type="text"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
    
}
#logreg-forms .form-signin input[type="password"] {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
#logreg-forms a{
    display: block;
    padding-top:10px;
    color:grey;
}
#logreg-forms input[type="submit"]{ margin-top:10px;  background-color: #4a4747}
#logreg-forms .form-reset, #logreg-forms .form-signup{ display: none; }
#logreg-forms .form-signup input { margin-bottom: 2px;}
/* Mobile */
@media screen and (max-width:500px){
    #logreg-forms{
        width:300px;
    }
    
}
        </style>
    </head>
    
    
    
    <body>
        <div id="logreg-forms">
        <form class="form-signin" action="examscreen.jsp" method="GET">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Login</h1>
            <hr/>
            <input type="text" class="form-control" placeholder="Username" required="" autofocus="" name="email" />
            <input type="password" class="form-control" placeholder="Password" required="" name="pass" /><br>
            
            <input class="btn btn-success btn-block" type="submit" value="Login" style="color:white;"><br/>
            <a href="register.jsp" id="forgot_pswd">Don't have an account? Sign Up</a><br/>
            <h5 style="color:red; text-align: center;">${err}</h5>
            <hr/>
            
            
            
            <h1 class="h4 mb-3 font-weight-normal" style="text-align: center">OR SignIn with Google</h1>
            <hr/>
            
           
           <center><div class="g-signin2" data-onsuccess="onSignIn" id="myP">
           
           
           </div></center>


	<img id="myImg">
	<br>
	<p id="name"></p>


	<div id="status"></div>



	<script type="text/javascript">
		function onSignIn(googleUser) {
			// window.location.href='success.jsp';

			var profile = googleUser.getBasicProfile();
			var imagurl = profile.getImageUrl();
			var name = profile.getName();
			var email = profile.getEmail();
			document.getElementById("myImg").src = imagurl;
			document.getElementById("name").innerHTML = name;
			document.getElementById("myP").style.visibility = "hidden";

			document.getElementById("status").innerHTML = 'Welcome ' + name
					+ '!<a href=success.jsp?email=' + email + '&name=' + name
					+ '/>Continue with Google login</a></p>'

		}
	</script>




<%-- 
	<button onclick="myFunction()">Sign Out</button>

	<script>
		function myFunction() {
			gapi.auth2.getAuthInstance().disconnect();
			location.reload();
		}
	</script>
           --%>  
            
        </form>
        
    </div>
    
    
    
    </body>
</html>