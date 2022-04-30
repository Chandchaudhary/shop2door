<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add  Category</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Category Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Category Name can't be empty" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </div>
            </div>
           
            
            </div>
            <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-success" OnClick="Button1_Click"   />

            </div>
            </div>
        
       </div>
</asp:Content>

