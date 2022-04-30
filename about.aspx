<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>shop 2 door</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compation" content="crome">
    <script>
        $(document).ready(function myfunction() {
            $("#cart").click(function myfunction() {
                window.location.href = "/cart.aspx";
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span><img src="icons/logo.jpeg" alt="shop 2 door" height="30" /></span> shop 2 door</a>
                    </div>
                       <div class="navbar-collapse collapse">
                           <ul class="nav navbar-nav navbar-right">
                               <li ><a href="Default.aspx">Home</a> </li>
                               <li class="active"><a href="about.aspx">About</a> </li>
                               <li><a href="Contact us.aspx">Contact us</a> </li>
                               <li><a href="Blog.aspx">Blog</a> </li>
                               <li class="dropdown">
                               <a class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                   <ul class="dropdown-menu">
                                       <li><a href="Product display.aspx">All Product</a></li>
                                       <li><a href="Grocery.aspx">Grocery</a></li>
                                       <li><a href="Product display.aspx">Packaged Food</a></li>
                                       <li><a href="Product display.aspx">Dairy & Beverages</a></li>
                                       <li><a href="Product display.aspx">Personal Care</a></li>
                                   </ul>
                              </li>
                               <li>
                                   <button id="cart" class="btn btn-primary navbar-btn" type="button" button id="cart">Cart<span class="badge" id="pcount" runat="server"></span>

                                   </button>
                               </li>
                              <li id="btnsignup" runat="server"><a href="sign up.aspx">Registration/Sign in</a> </li>
                           </ul>
                       </div>
                </div>
            </div>
           
        </div>
    </form>
    <br />
    <br />
    <div>
        <center>
         <h3>Welcome to about us </h3>
            
            </center>
    </div>
     <!---footer --->
    <hr />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">↑Back to top↑</a></p>
            <p>&copy:2022 shop 2 door.in &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">product</a>&middot;<a href="sign up.aspx">Sign up</a>&middot;</p>
        </div>
    </footer>
    <!---footer end--->
</body>
</html>
