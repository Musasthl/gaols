<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Di ko pa maaply sa Banner ascx may datarowveiw error pa.</title>
<style type="text/css">
body {
	margin:0;
	padding:0;
	color: #4E3D4E;
	font: normal 0.6em sans-serif, Arial;
	background-color: #EDEDED;
	width: 100%;
}
h1 {
	padding-left: 55px;
	font:bold 14px/1.5em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif;
	text-transform:uppercase;
	letter-spacing:0.05em;
}
a {
	outline: none;
}
</style>

<style type="text/css">
    /* rotator in-page placement */
    div#rotator {
	position:relative;
	height:67px;
	margin-left: 15px;
        top: 0px;
        left: -15px;
        width: 524px;
    }
/* rotator css */
	div#rotator ul li {
	float:left;
	position:absolute;
	list-style: none;
        top: -1px;
        left: -121px;
        width: 638px;
    }
/* rotator image style */	
	div#rotator ul li img {
	border:1px solid #ccc;
	padding: 4px;
	background: #FFF;
}
    div#rotator ul li.show {
	z-index:500
}
</style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>


<script type="text/javascript">

function theRotator() {
	
	$('div#rotator ul li').css({opacity: 0.0});
	
	
	$('div#rotator ul li:first').css({opacity: 1.0});
		
	//rotate every after 3 seconds
	setInterval('rotate()',2000);
	
}

function rotate() {	
	
	var current = ($('div#rotator ul li.show')?  $('div#rotator ul li.show') : $('div#rotator ul li:first'));
	var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div#rotator ul li:first') :current.next()) : $('div#rotator ul li:first'));	
	
	
	next.css({opacity: 0.0})
	.addClass('show')
	.animate({opacity: 1.0}, 1000);

	
	current.animate({opacity: 0.0}, 1000)
	.removeClass('show');
	
};

$(document).ready(function() {		
	//Load the slideshow
	theRotator();
});
</script>

</head>
<body>

<h1>Try ko Lang d2 my Error pa kasi sa home nakalagay datarowview error</h1>
<center>
<div id="rotator">
  <ul>
    <li class="show"></li>
    
    
      <li><a href="#link1"><img src="images/webbanner11.jpg" width="600" height="100"  alt="pic1" /></a></li>
      <li><a href="#link2"><img src="images/webbanner3.jpg" width="600" height="100"  alt="pic2" /></a></li>
      <li><a href="#link3"><img src="images/webbanner7.jpg" width="600" height="100"  alt="pic3" /></a></li>
      <li><a href="#link4"><img src="images/webbanner10.jpg" width="600" height="100"  alt="pic4" /></a></li>
      <li><a href="#link5"><img src="images/webbanner1.jpg" width="600" height="100"  alt="pic5" /></a></li>
    <li></li>
      <li><a href="#link6"><img src="images/webbanner5.jpg" width="600" height="100"  alt="pic6" /></a></li>
  </ul>
</div>
</center>

</body>
</html>
