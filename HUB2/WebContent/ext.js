window.addEventListener("scroll" ,function(){
	var header = document.querySelector("header");
	header.classList.toggle("sticky" ,window.scrollY > 0);
});
function payment(){
	alert("Your Payment is done ...Thank you for Visiting!!!");
}
function myfun(){
	alert("Your Request to Reset Password is Send Successfully...Please check your email..!!");
}