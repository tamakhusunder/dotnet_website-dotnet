<%@ Page Title="" Language="C#" MasterPageFile="~/LAB/lab.Master" AutoEventWireup="true" CodeBehind="lab2.aspx.cs" Inherits="dotnetclass1.LAB.lab2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="10" CssClass="RegistrationCentered">
        
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" CssClass="text-center text-success fw-bold"><h1>2016 Batch Registration Form</h1></asp:TableCell>
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
            <asp:TableCell CssClass="fw-bold">Re-Password:</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtrepassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRepassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txtrepassword" Font-Bold="false" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>           
                <asp:CompareValidator ID="cvMatch" runat="server" ErrorMessage=" (Password doesnot Match)" ControlToValidate="txtpassword" ControlToCompare="txtrepassword" Font-Bold="true" ForeColor="Red" Display="Dynamic" ></asp:CompareValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell CssClass="fw-bold">Age:</asp:TableCell>
            <asp:TableCell> <asp:TextBox ID="txtage" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age Required" ControlToValidate="txtage" Font-Bold="false" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server" ErrorMessage="Out of Range" ControlToValidate="txtage" MinimumValue="18" MaximumValue="40" Type="Integer" Font-Bold="true" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell CssClass="fw-bold">Email:</asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtemail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email Required" ControlToValidate="txtemail" Font-Bold="false" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Invalid Email" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:CustomValidator ID="cvPasswordLength" runat="server" ErrorMessage="Password must be atleast 6 character" ControlToValidate="txtpassword" OnServerValidate="cvPasswordLength_ServerValidate" Font-Bold="true" ForeColor="Red" Display="Dynamic"></asp:CustomValidator>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" CssClass="text-center"><asp:Button ID="btnsignup" runat="server" Text="Sign Up" CssClass="btn-success rounded-2" OnClick="btnsignup_Click"/></asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" CssClass="text-center fw-bold">Already have an account<a href="logininfo.aspx">Login</a></asp:TableCell>
        </asp:TableRow>

    </asp:Table>

</asp:Content>
