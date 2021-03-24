<%@ Page Title="" Language="C#" MasterPageFile="~/LAB/lab.Master" AutoEventWireup="true" CodeBehind="lab7.aspx.cs" Inherits="dotnetclass1.LAB.lab7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-lg-6 col-md-12 col-sm-12 pt-lg-5 p-lg-5">
            <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnRowCommand="gvStudent_RowCommand">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />

                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("Id")%>'></asp:Label>
                         </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Rollno">
                        <ItemTemplate>
                            <asp:Label ID="lbRollno" runat="server" Text='<%#Eval("Rollno")%>'></asp:Label>
                         </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField  HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lbName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                         </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField  HeaderText="Option">
                        <ItemTemplate>
                            <asp:LinkButton ID="lbView" runat="server" CommandName="View" CommandArgument='<%#Eval("Id")%>'>View</asp:LinkButton>
                         </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
        </div>

        <div class="col-lg-6 col-md-12 col-sm-12">
            <asp:Table ID="Table1" runat="server" CssClass="border" BorderStyle="Dashed" BorderWidth="2" CellPadding="5" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell>ID</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Rollno</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtRollno" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Name</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="text-center align-items-center">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn-danger rounded" onClick="btnUpdate_Click" /></asp:TableCell>
                    <asp:TableCell  CssClass="text-center">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn-danger rounded" OnClick="btnDelete_Click" /></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="text-center">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn-danger rounded" OnClick="btnSearch_Click" /></asp:TableCell>
                    <asp:TableCell CssClass="text-center">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn-danger rounded" OnClick="btnClear_Click" /></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="text-center" ColumnSpan="2">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn-success rounded rounded" OnClick="btnInsert_Click" /></asp:TableCell>
                     </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="text-center">
                        <asp:Button ID="btnFirst" runat="server" Text="First" CssClass="btn-primary rounded" OnClick="btnFirst_Click" /></asp:TableCell>
                    <asp:TableCell CssClass="text-center">
                        <asp:Button ID="btnLast" runat="server" Text="Last" CssClass="btn-primary rounded" OnClick="btnLast_Click" /></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="text-center">
                        <asp:Button ID="btnPrevious" runat="server" Text="Previous" CssClass="btn-primary rounded" OnClick="btnPrevious_Click"/></asp:TableCell>
                    <asp:TableCell CssClass="text-center">
                        <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="btn-primary rounded" OnClick="btnNext_Click" /></asp:TableCell>
                </asp:TableRow>

            </asp:Table>

        </div>

    </div>
</asp:Content>
