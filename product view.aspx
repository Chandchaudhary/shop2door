<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="product view.aspx.cs" Inherits="product_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:50px">
        <div class="col-md-5">
           <asp:Repeater ID="Repeater1" runat="server">  
            <ItemTemplate>
            <div style="max-width:480px" class="thumbnail">
                 <img src="image/product img/<%# Eval("pimg") %>/<%#Eval("pimgname") %><%#Eval("Extention") %>" alt="<%#Eval("pimgname") %>"  />
            </div>
        </ItemTemplate>
      </asp:Repeater>
            </div>
        <div class="col-md-5">
            <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                <ItemTemplate>
                   
            <div class="divdet1">
                <h1 class="proname"><%# Eval("pname") %></h1>
                
                <span class="proorgpriceview">Rs.<%# Eval("pprice") %></span><span class="propricediscountview">(Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("pprice"))-Convert.ToInt64(Eval("psprice"))) %>OFF)</span>
                <p class="propriceview">Rs.<%# Eval("psprice") %></p>
            </div>
            <div class="divdet1">
                <h5 class="amount">Amount:<%# Eval("pamount") %></h5>
            </div>
            <div>
                <asp:Button ID="addtocart" CssClass="mainbutton" runat="server" Text="Add to Cart" OnClick="addtocart_Click" />
            </div>
            <div class="divdet1">
                <h5 class="amount">Description</h5>
                <p><%# Eval("pdetail") %></p>
            </div>
            <div class="amount">
                <p><%#((int)Eval("pfdelivery")==1)? "Free delivery":"" %></p>
                <p><%#((int)Eval("preturn")==1)? "7 days Return":""%></p>
                <p><%#((int)Eval("pcod")==1)? "Cash on delivery":""%></p>
            </div>
            <div>
                <asp:Button ID="Button1"  CssClass="mainbutton" runat="server" Text="Buy now" Onclick="Button1_Click"  />
            </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
     
    </div>
</asp:Content>

