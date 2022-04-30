<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Grocery.aspx.cs" Inherits="Grocery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <h4>Grocery</h4>
     <div class="row" style="padding-top:50px">
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="product view.aspx?pid=<%# Eval("pimgid") %>" style="text-decoration:none;">
            <div class="thumbnail">
                <img src="image/product img/<%# Eval("pimg") %>/<%#Eval("pimgname") %><%#Eval("Extention") %>" alt="<%#Eval("pimgname") %>" />
                <div class="caption">
                    <div class="proname"><%# Eval("pname") %></div>
                    <div class="proprice"><span class="proorgprice"> <%# Eval("pprice") %> </span><%# Eval("psprice") %><span class="propricediscount">(<%# Eval("disamount") %> OFF)</span></div>
                </div>
            </div>
                
        </div>
           </a>
        </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

