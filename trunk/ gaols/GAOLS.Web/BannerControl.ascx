<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BannerControl.ascx.cs" Inherits="BannerControl" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="App_Themes/Theme1/css/main.css" rel="stylesheet" type="text/css" media="screen, projection" />

    <link href="~css/ui-lightness/jquery-ui-1.7.3.custom.css" rel="stylesheet" 
        type="text/css" />
    <link href="~css/main.css" rel="stylesheet" 
        type="text/css" />
        
        
 <style type="text/css">
 body {
	margin: 0;
	padding: 0;
	color: #4E3D4E;
	font: normal 0.6em sans-serif, Arial;
	background-color: #EDEDED;
	width: 100%;
	float: left;
}
h1 {
	padding-left: 55px;
	font:bold 14px/1.5em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif;
	text-transform:uppercase;
	letter-spacing:0.05em;
}
a {
 	border: outset;
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
        top: -7px;
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
<div style="height: 118px; background-image: url('page_background.jpg');">

<center>
<div id="rotator" style="left: -15px; top: 0px; width: 502px">
  <ul>
    <li class="show"></li>
    
    
      <li><a href="#link1"><img src="images/webbanner11.jpg" width="600" height="100"  alt="pic1" /></a></li>
      <li><a href="#link2"><img src="images/webbanner3.jpg" width="600" height="100"  alt="pic2" /></a></li>
      <li class="style6" style="left: -171px; top: -1px; width: 651px"><a href="#link3"><img src="images/webbanner7.jpg" width="600" height="100"  alt="pic3" /></a></li>
      <li><a href="#link4"><img src="images/webbanner10.jpg" width="600" height="100"  alt="pic4" /></a></li>
      <li><a href="#link5"><img src="images/webbanner1.jpg" width="600" height="100"  alt="pic5" /></a></li>
    <li></li>
      <li><a href="#link6"><img src="images/webbanner5.jpg" width="600" height="100"  alt="pic6" class="style5" /></a></li></ul></div></center>
      
 </div>
      </body>
      </html>
<div>a</div>
<style type="text/css">
                                                                                                                                                                                                                            .style1
    {
        width: 100%;
        height: 14px;
                                                                                                                                                                                                                                margin-top: 41px;
                                                                                                                                                                                                                            }
    .style4
    {
        width: 594px;
                                                                                                                                                                                                                                height: 38px;
                                                                                                                                                                                                                            }
.style5 {
	margin-left: 0px;
}
.style6 {
	margin-left: 37px;
}
                                                                                                                                                                                                                            .style8 {
			 	text-align: left;
			 	margin-top: 0px;
			 }
                                                                                                                                                                                                                            .style9 {
	text-align: left;
	font: normal normal bold medium serif;
	margin-top: 0px;
	margin-bottom: 5px;
}
.style11 {
	text-align: left;
}
                                                                                                                                                                                                                         .style12 {
	margin-bottom: 19px;
}
                                                                                                                                                                                                                         </style>
<table class="style1" style="height: 141px">
    
    <tr>
        <td colspan="1" class="style4" style="background-image: url('images/submenu.jpg'); width: 559px;">
		&nbsp;</td>
        <td align="right" style="background-image: url('images/submenu.jpg')">
		<asp:LoginStatus ID="LoginStatus1" runat="server" Font-Size="Medium" />
        </td>
    </tr>
    <tr>
        <td align="left" style="background-image: url('images/submenu.jpg'); width: 559px;">
            <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;</td>
		<td align="right" class="style2" style="background-image: url('images/submenu.jpg')">
			<br/>
            
            &nbsp;
          
        </td>
    </tr>
</table>
<div "width:650px" class="style12">
<div style="width: 400px; float: right; padding:15px;background-image: url('images/submenu.jpg')">
  <p class="style9" style="height: 18px">&nbsp;&nbsp; </p>
            <div class="style8" style="height: 31px; width: 485px">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId">
            </asp:DropDownList>
            
            <asp:TextBox ID="TextBox1" runat="server" Width="94px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:Button ID="Button1" runat="server" Text="Search" Width="176px" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString3 %>" 
                SelectCommand="SELECT [CategoryId], [Name] FROM [Category]" 
                
                ProviderName="<%$ ConnectionStrings:GAOLSConnectionString3.ProviderName %>"></asp:SqlDataSource>

</div>


<div class="style11" 
    style="width: 250px; background-image: url('images/submenu.jpg');padding:0;margin:0; float: left;"><br/>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx" Font-Size="Medium" BorderStyle="Outset" Width="76px"> 
			Home</asp:LinkButton>&nbsp;&nbsp; 
			<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Cart.aspx" Font-Size="Medium" BorderStyle="Outset" Width="52px">Cart</asp:LinkButton>
	&nbsp; 
			<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Signup.aspx" Font-Size="Medium" BorderStyle="Outset" Width="70px" CssClass="style10">Sign 
			Up</asp:LinkButton></div>
</div>



