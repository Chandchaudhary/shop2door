<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Product display.aspx.cs" Inherits="Product_display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <h3>Welcome to view all product</h3>
   
    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>        
        <div>
            <center>
            <a href="product view.aspx?pid=<%# Eval("pimg") %>" style="text-decoration:none;">
            <div class="thumbnail">
                
                <img src="image/product img/<%# Eval("pimg") %>/<%#Eval("pimgname") %><%#Eval("Extention") %>" alt="<%#Eval("pimgname") %>" height="250" width="250" />
                <div class="caption">
                    <div class="proname"><%# Eval("pname") %></div>
                    <div class="proprice"><span class="proorgprice"> <%# Eval("pprice") %> </span><%# Eval("psprice") %><span class="propricediscount">(<%# Eval("disamount") %> OFF)</span></div>
                <br />
                </div>
            </div>
             </center>  
        </div>
           </a>
        </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

