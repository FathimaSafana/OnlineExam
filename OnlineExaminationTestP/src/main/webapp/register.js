function formValidation()
{
var name = document.register.name;
var password = document.register.password;
var email = document.register.email;
 if(password_validation(password,6,12))
{

if(allLetter(name))
{

if(ValidateEmail(email))
{

} 
}
} 


return false;

} 
function password_validation(password,mx,my)
{
var password_len = passid.value.length;
if (password_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
password.focus();
return false;
}
return true;
}
function allLetter(name)
{ 
var letters = /^[A-Za-z]+$/;
if(name.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
name.focus();
return false;
}
}



function ValidateEmail(email)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(email.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
email.focus();
return false;
}


}
