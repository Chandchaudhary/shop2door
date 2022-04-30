<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fogotpassword.aspx.cs" Inherits="fogotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>fogot password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compation" content="crome">
    <link href="custome.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                              <li class="active"><a href="sign in.aspx">Sign in</a> </li>
                           </ul>
                       </div>
                </div>
        </div>
        <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <h2>recover password</h2>
                <h3>enter your email,recovery link well be send to you shortly</h3>
                <div class="form-group">
                    <asp:Label ID="lbemail" CssClass="col-md-2 control-label" runat="server" Text="enter email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="fgemail" CssClass="form-control" runat="server"></asp:TextBox>
                        
                    </div>
                </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="rstpass" CssClass="btn-btn-default" runat="server" Text="reset" OnClick="rstpass_Click" />
                    
                </div>
                   
            </div>
            </div>
        </div>
               
    </form>
    <footer class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">↑Back to top↑</a></p>
            <p>&copy:2022 shop 2 door.in &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">product</a>&middot;<a href="sign up.aspx">Sign up</a>&middot;</p>
        </div>
    </footer>
</body>
</html>
