<%@ Page Title="" Language="C#" MasterPageFile="~/LAB/lab.Master" AutoEventWireup="true" CodeBehind="lab5.aspx.cs" Inherits="dotnetclass1.LAB.lab5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="10" CssClass="RegistrationCentered">
        
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" CssClass="text-center text-success fw-bold"><h1>2016 Batch Login Form</h1></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell CssClass="fw-bold">Username:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvusername" runat="server" ErrorMessage="Username Required" ControlToValidate="txtusername" Font-Bold="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                 </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell CssClass="fw-bold">Password:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txtpassword" Font-Bold="false" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>

   

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" CssClass="text-center"><asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="btn-success rounded-2" OnClick="btnSignIn_Click"/></asp:TableCell>
        </asp:TableRow>
           

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" CssClass="text-center fw-bold">Don't have an account<a href="Registration.aspx"> Registration</a></asp:TableCell>
        </asp:TableRow>

    </asp:Table>
</asp:Content>
