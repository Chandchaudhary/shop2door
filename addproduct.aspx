<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is empty" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Product Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="price is empty" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Selling Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Selling is empty" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" CssClass="col-md-2 control-label" runat="server" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" CssClass="col-md-2 control-label" runat="server" Text="Amount"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Amount is empty" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" CssClass="col-md-2 control-label" runat="server" Text="Details"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Detail is empty" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label7" CssClass="col-md-2 control-label" runat="server" Text="Uplode Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Image is not uploded" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label8" CssClass="col-md-2 control-label" runat="server" Text="Free Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label9" CssClass="col-md-2 control-label" runat="server" Text="7 days return "></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBox2" runat="server"  />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label10" CssClass="col-md-2 control-label" runat="server" Text="Cash on delivaey"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                </div>
            </div>
            <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />

            </div>
            </div>

        </div>
        </div>
    </div>
</asp:Content>

