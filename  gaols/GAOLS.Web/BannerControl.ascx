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

<center>
<div id="rotator">
  <ul>
    <li class="show"></li>
    
    
      <li><a href="#link1"><img src="images/webbanner11.jpg" width="600" height="100"  alt="pic1" /></a></li>
      <li><a href="#link2"><img src="images/webbanner3.jpg" width="600" height="100"  alt="pic2" /></a></li>
      <li class="style6" style="left: -171px; top: -1px; width: 651px"><a href="#link3"><img src="images/webbanner7.jpg" width="600" height="100"  alt="pic3" /></a></li>
      <li><a href="#link4"><img src="images/webbanner10.jpg" width="600" height="100"  alt="pic4" /></a></li>
      <li><a href="#link5"><img src="images/webbanner1.jpg" width="600" height="100"  alt="pic5" /></a></li>
    <li></li>
      <li><a href="#link6"><img src="images/webbanner5.jpg" width="600" height="100"  alt="pic6" class="style5" /></a></li></ul></div></center></body></html><style type="text/css">
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
                                                                                                                                                                                                                            .style7
                                                                                                                                                                                                                            {
                                                                                                                                                              }
                                                                                                                                                                                                                        </style><table class="style1">
    
    <tr>
        <td colspan="1" class="style4"></td>
        <td align="right" class="style7"><asp:LoginStatus ID="LoginStatus1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="left" class="style8">
            <br />
        <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>&nbsp; <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Cart.aspx">Cart</asp:LinkButton></td><td align="right" class="style2">
            <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:GAOLSConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Category]" 
                ProviderName="<%$ ConnectionStrings:GAOLSConnectionString.ProviderName %>"></asp:SqlDataSource>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Search" />
        </td>
    </tr>
</table>
<p>
    &nbsp;</p>


