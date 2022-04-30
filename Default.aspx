<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <br />
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
                               <li class="active"><a href="Default.aspx">Home</a> </li>
                               <li><a href="about.aspx">About</a> </li>
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
           <div class="container">
              <br />
              <br />
                <asp:TextBox ID="name" runat="server" CssClass="center-page" placeholder="Enter Product Name"></asp:TextBox>       
                <asp:Button ID="searchbtn" Cssclass="btn btn-success" runat="server" Text="Search" OnClick="searchbtn_Click"/>
               <%--<asp:GridView ID="GridView1" runat="server" CssClass="center-page" ShowHeaderWhenEmpty="true" EmptyDataText="No product found!">--%>
                   <asp:Repeater runat="server" ID="search">
                       <ItemTemplate>
                           <div><%# Eval("catname") %></div>
                       </ItemTemplate>
                   </asp:Repeater>
               <%--</asp:GridView>--%>
           </div>
            <!---image swip screen--->
          <hr />
            <div class="container">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="image/product img/102/Epigamia Milkshake Strawberry 1 Litre01.jpg" alt="Los Angeles" style="height:230px;">
      </div>

      <div class="item">
        <img src="image/product img/104/Fortune Sunlite Refined Sunflower Oil01.jpg" alt="home delivery" style="height:230px;">
      </div>
    
      <div class="item">
        <img src="image/product img/96/Tata Sampann Chana Dal01.jpg" alt="New york" background-color="red">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
            <!---image swip screen end--->
        </div>
        <!---middle page--->
        <hr />
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="image/fortune.jpg"  alt="thumb" width="140" height="140" /> 
                    <h2>Top selling oil</h2>
                    <p>Fortune Sunlite Refined Sunflower Oil: 1 Litre</p>
                    <p><a class="btn btn-default" href="Product display.aspx" role="button">view more&raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="image/basmati rice 1.jpg"  alt="thumb" width="140" height="140" /> 
                    <h2>Premium quality rice</h2>
                    <p>Fortune Sunlite Refined Sunflower Oil: 1 Litre</p>
                    <p><a class="btn btn-default" href="Product display.aspx" role="button">view more&raquo;</a></p>
                </div>
                 <div class="col-lg-4">
                    <img class="img-circle" src="image/chana dal1.jpg"  alt="thumb" width="140" height="140" /> 
                    <h2>Source of protein</h2>
                    <p>Tata Sampann Chana Dal: 500 gms</p>
                    <p><a class="btn btn-default" href="Product display.aspx" role="button">view more&raquo;</a></p>
                </div>
                 <div class="col-lg-4">
                    <img class="img-circle" src="image/atta 1.jpg"  alt="thumb" width="140" height="140" /> 
                    <h2>100% MP Sharbati wheat</h2>
                    <p>Aashirvaad Select Sharbati Wheat Atta: 5 kgs</p>
                    <p><a class="btn btn-default" href="Product display.aspx" role="button">view more&raquo;</a></p>
                </div>
                 <div class="col-lg-4">
                    <img class="img-circle" src="image/baddam 1.jpg"  alt="thumb" width="140" height="140" /> 
                    <h2>Ready to eat</h2>
                    <p>KMK Almond Mamra (Badam): 200 gms</p>
                    <p><a class="btn btn-default" href="Product display.aspx" role="button">view more&raquo;</a></p>
                </div>
                 <div class="col-lg-4">
                    <img class="img-circle" src="image/chilli powder 1.jpg"  alt="thumb" width="140" height="140" /> 
                    <h2>Freshness in every pack</h2>
                    <p>Everest Kashmirilal Red Chilli Powder: 100 gms</p>
                    <p><a class="btn btn-default" href="Product display.aspx" role="button">view more&raquo;</a></p>
                </div>
            </div>

        </div>
        <!---middle page end--->
    </form>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!---footer --->
    <hr />
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">↑Back to top↑</a></p>
            <p>&copy:2022 shop 2 door.in &middot;<a href="Default.aspx">Home</a>&middot;<a href="Product display.aspx">product</a>&middot;<a href="sign up.aspx">Sign up</a>&middot;</p>
        </div>
    </footer>
    <!---footer end--->
</body>
</html>
