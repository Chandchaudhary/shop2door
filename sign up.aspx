<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign up.aspx.cs" Inherits="sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compation" content="crome">
    <link href="custome.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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
                               <li><a href="Default.aspx">Home</a> </li>
                               <li><a href="#">About</a> </li>
                               <li><a href="#">Contact us</a> </li>
                               <li><a href="#">Blog</a> </li>
                               <li class="dropdown">
                               <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                   <ul class="dropdown-menu">
                                       <li><a href="#">a</a></li>
                                       <li><a href="#">b</a></li>
                                       <li><a href="#">c</a></li>
                                       <li><a href="#">d</a></li>
                                   </ul>
                              </li>
                              <li class="active"><a href="sign up.aspx">Registration</a> </li>
                           </ul>
                       </div>
                </div>
            </div>
        </div>
         
        <!---sign up page--->
        <div class="center-page">
            <label class="cpl-xs-11">User name:</label>
            <div class="cpl-xs-11">
              <asp:TextBox ID="txtusername" runat="server" CssClass="Form-control" placeholder="Enter your name"></asp:TextBox>
            </div>
            <br />
            <label class="cpl-xs-11">Password:</label>
            <div class="cpl-xs-11">
              <asp:TextBox ID="Txtpass" runat="server" CssClass="Form-control" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <label class="cpl-xs-11">Confirm password:</label>
            <div class="cpl-xs-11">
              <asp:TextBox ID="Txtcpass" runat="server" CssClass="Form-control" placeholder="Confirm your password" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <label class="cpl-xs-11">Full name:</label>
            <div class="cpl-xs-11">
              <asp:TextBox ID="txtname" runat="server" CssClass="Form-control" placeholder="Enter your full name"></asp:TextBox>
            </div>
            <br />
            <label class="cpl-xs-11">Email ID:</label>
            <div class="cpl-xs-11">
              <asp:TextBox ID="txtemail" runat="server" CssClass="Form-control" placeholder="Enter your Email"></asp:TextBox>
            </div>
            <br />
            <div class="cpl-xs-11">
                <asp:Button ID="txtsignup" CssClass="btn btn-success" runat="server" Text="Sign Up" OnClick="txtsignup_Click"/>
                <asp:Button ID="txtsigninpage" Cssclass="btn btn-success" runat="server" Text="Sign in" OnClick="txtsignin_Click" PostBackUrl="~/sign in.aspx" />
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
        <!---siqn up page end--->
        <!---footer --->
    <hr />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <footer class="footer-pos">
        <div class="footer-pos">
            <p class="pull-right"><a href="#">↑Back to top↑</a></p>
            <p>&copy:2022 shop 2 door.in &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">product</a>&middot;<a href="sign up.aspx">Sign up</a>&middot;</p>
        </div>
    </footer>
    <!---footer end--->
    </form>
</body>
</html>
