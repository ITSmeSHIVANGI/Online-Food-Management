
window.addEventListener("scroll", function(){
	var header=document.querySelector("header");
	header.classList.toggle("sticky", window.scrollY > 0);
});


function toggleMenu(){
	var menuToggle=document.querySelector(".toggle");
	var menu=document.querySelector(".menu");
	
	menuToggle.classList.toggle("active");
	menu.classList.toggle("active");
}

function videoUrl(hmmmmmm){
	document.getElementById("slider").src=hmmmmmm;
}

function greet(){
	alert("Your Record Is Successfully inserted...!!!");
}
function greet2(){
	alert("wrong input Enter the value within range...!!!");
}


/*
const password = document.getElementById('password');
const toggle = document.getElementById('toggle');

function showHide(){
	if(password.type==='password'){
		password.setAttribute('type','text');
		toggle.classList.add('hide')
	}
	else{
		password.setAttribute('type','password');
		toggle.classList.remove('hide')
	}
}
*/

var state=false;
function toggle(){
	if(state=false){
		document.getElementById("password").setAttribute("type","password");
		document.getElementById("eye").style.color='#7a797e';
		state=false;
	}
	else{
		document.getElementById("password").setAttribute("type","text");
		document.getElementById("eye").style.color='#fff200';
		state=true;
	}
}

function val(){
	if(frm.password.value == ""){
		alert("Enter the Password..");
		frm.password.focus();
		return false;
	}
	if(frm.firstName.value == ""){
		alert("Enter the firstname..");
		frm.firstName.focus();
		return false;
	}
	if(frm.lastName.value == ""){
		alert("Enter the lastname..");
		frm.lastName.focus();
		return false;
	}
	if(frm.email.value == ""){
		alert("Enter the email..");
		frm.email.focus();
		return false;
	}
	if(frm.mobile.value == ""){
		alert("Enter the mobile..");
		frm.mobile.focus();
		return false;
	}
	if((frm.mobile.value).length <10 &&(frm.mobile.value).length >10){
		alert("Mobile number should be 10 digits..");
		frm.mobile.focus();
		return false;
	}
	if(frm.address.value == ""){
		alert("Enter the address..");
		frm.address.focus();
		return false;
	}
	if(frm.city.value == ""){
		alert("Enter the city..");
		frm.city.focus();
		return false;
	}
	if(frm.state.value == ""){
		alert("Enter the state..");
		frm.state.focus();
		return false;
	}
	if(frm.pincode.value == ""){
		alert("Enter the pincode..");
		frm.pincode.focus();
		return false;
	}
	if((frm.pincode.value).length <=6){
		alert("Pincode should be of 6 digits..");
		frm.pincode.focus();
		return false;
	}
	if((frm.password.value).length < 8){
		alert("Password should be of minimum 8 characters..");
		frm.password.focus();
		return false;
	}
	if(frm.confirmpassword.value == ""){
		alert("Enter the Confirm Password..");
		return false;
	}
	if(cnfmpassword.value!=password.value){
		alert("Password confirmation does not match..");
		return false;
	}
	if(cnfmpassword.value == password.value){
	   alert("Thank You!! Registered Successfully..");
	   return true;
	}
}

/*function check(){
	var password=document.getElementById("psw").value;
	var Cpassword=document.getElementById("Cpsw").value;
	if(password==Cpassword){
		document.getElementById("wrong").innerHTML="Record is submitted";
		return true;
	}
	else{
		document.getElementById("wrong").innerHTML="Password did not match";
		return false;
	}
}*/

