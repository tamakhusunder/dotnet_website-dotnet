<%@ Page Title="" Language="C#" MasterPageFile="~/LAB/lab.Master" AutoEventWireup="true" CodeBehind="lab1.aspx.cs" Inherits="dotnetclass1.LAB.lab1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <div class ="p-3">

                <div class="row">
                     <%--TextBox--%>
                    <div class="col-lg-3 col-md-6 col-sm-12 ">
                        <asp:Label ID="lblTextbox" runat="server" Text="Text Box" CssClass="fw-bold text-danger"></asp:Label><br>
                        <asp:TextBox ID="txtValue1" runat="server" TextMode="Number" Width="60"></asp:TextBox>
                        <asp:TextBox ID="txtValue2" runat="server" TextMode="Number" Width="60"></asp:TextBox>
                        <asp:Button ID="btnCalculation" runat="server" Text="=" CssClass="btn-success rounded fw-bold" OnClick="btnCalculation_Click" />
                        <asp:Label ID="lblCalculation" runat="server" Text=""></asp:Label>
                    </div>

                    <%--Radio Button--%>
                    <div class="col-lg-3 col-md-6 col-sm-12 ">
                        <asp:Label ID="lblRadioButton" runat="server" Text="Radio Button:" CssClass="fw-bold text-danger"></asp:Label>
                        <asp:RadioButtonList ID="rblist" runat="server">
                            <asp:ListItem Value="+">Addition</asp:ListItem>
                            <asp:ListItem Value="-">Subtration</asp:ListItem>
                            <asp:ListItem Value="*">Multiplication</asp:ListItem>
                            <asp:ListItem Value="/">Division</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:Button ID="btnRadioButtonCalc" runat="server" Text="=" CssClass="fw-bold rounded btn-success" OnClick="btnRadioButtonCalc_Click" />
                        <asp:Label ID="lblRadioCalculation" runat="server" Text="Label"></asp:Label>
                    </div>

                    <%--dropdown list--%>
                    <div class="col-lg-3 col-md-6 col-sm-12 ">
                        <asp:Label ID="lblDropDownlist" runat="server" Text="Drop Down List" CssClass="fw-bold text-danger"></asp:Label>
                        <asp:DropDownList ID="ddlist" runat="server">
                            <asp:ListItem Value="-1">Select option</asp:ListItem>
                            <asp:ListItem Value="+">Addition</asp:ListItem>
                            <asp:ListItem Value="-">Subtration</asp:ListItem>
                            <asp:ListItem Value="*">Multiplication</asp:ListItem>
                            <asp:ListItem Value="/">Division</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnDropDownCalc" runat="server"  Text="=" CssClass="fw-bold rounded btn-success" OnClick="btnDropDownCalc_Click" />
                    <asp:Label ID="lblDropDownCalculation" runat="server" Text=""></asp:Label>
                    </div>

                     <%--checkbox --%>
                    <div class="col-lg-3 col-md-6 col-sm-12 ">
                        <asp:Label ID="lblCheckBox" runat="server" Text="Checkbox" CssClass="fw-bold text-danger"></asp:Label>
                        <asp:CheckBoxList ID="cbList" runat="server">
                            <asp:ListItem Value="+">Addition</asp:ListItem>
                            <asp:ListItem Value="-">Subtration</asp:ListItem>
                            <asp:ListItem Value="*">Multiplication</asp:ListItem>
                            <asp:ListItem Value="/">Division</asp:ListItem>
                        </asp:CheckBoxList>
                        <asp:Button ID="btnCheckboxCalc" runat="server"  Text="=" CssClass="fw-bold rounded btn-success" OnClick="butnCheckboxCalc_Click"/>
                        <asp:Label ID="lblCheckBoxDisplayList" runat="server" Text=""></asp:Label>
                    </div>

                </div>
            </div>


            <div class="row p-5">
                        <%--Calender--%>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                        </div>
                        <%--text area--%>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            Today date is:<br/>
                            <textarea id="TextArea1" cols="20" rows="2" runat="server"></textarea><br/><br/>
                            
                            Your birthday is:<br/>
                            <textarea id="TextArea2" cols="20" rows="2" runat="server"></textarea><br/><br/>
                        </div>
                        <%--button--%>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="fw-bold rounded btn-success" OnClick="btnReset_Click" />
                        </div>
              </div>

                

                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12">


                    </div>
                </div>

</asp:Content>
