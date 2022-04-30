<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    
    <div class="padding-top:50px;">
        <h4 class="pronameview" runat="server" id="headerid"></h4>
        <div style="max-width:680px" class="thumbnail">
        <img src="icons/work in progress.jpg" />
        </div>
        <div class="col-md-8" style="border:1px solid black;">
            <div class="media">
                <div class="col-md-5">
                     
           <asp:Repeater ID="repeater" runat="server">  
        <ItemTemplate>
            <div style="max-width:480px" class="thumbnail">
                 <img src="icons/work in progress.jpg" />
            </div>
        </ItemTemplate>
      </asp:Repeater>
            </div>
                <div class="media-body">
                    <asp:Repeater ID="repeater1" runat="server" >
                <ItemTemplate>
                   
            <div class="divdet1">
                <h1 class="proname"><%# Eval("pname") %></h1>
                
                <span class="proorgpriceview">Rs.<%# Eval("pprice") %></span><span class="propricediscountview">(Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("pprice"))-Convert.ToInt64(Eval("psprice"))) %>OFF)</span>
                <p class="propriceview">Rs.<%# Eval("psprice") %></p>
            </div>
            
            
            <div>
                <asp:Button ID="Button1" CssClass="mainbutton" runat="server" Text="Check Out" />
            </div>
                    </ItemTemplate>
                </asp:Repeater>      
        </div>
       
        <div class="col-md-4">
            <div>
                <h5>Price Details</h5>
                <div>
                    <label>Cart total</label>
                    <span class="pull-right priceGray" runat="server" id="spancarttotal">1400</span>
                </div>
                <div>
                    <lable>Cart Discount</lable>
                    <span class="pull-right priceGreen">-200</span>
                    <div>
                <asp:Button ID="Button1" CssClass="mainbutton" runat="server" Text="Buy now" Onclick="Button1_Click"/>
            </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

