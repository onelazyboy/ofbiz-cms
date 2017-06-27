$(function(){
	$("div#app-navigation").attr("class","sidebar-collapse");
	$("div#app-navigation h2").css("display","none");
	$("div#app-navigation ul").attr("class","nav metismenu");
	$("div#app-navigation ul").attr("id","side-menu");
	$("div#app-navigation").wrap("class=\"navbar-default navbar-static-side\" role=\"navigation\"");

})