<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GraduationPlans.aspx.cs" Inherits="Advising114.Admin.GraduationPlans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:GridView ID="GridView1" runat="server" CssClass="m-3" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="plan_id" HeaderText="Plan ID" />
        <asp:BoundField DataField="semester_code" HeaderText="Semester" />
        <asp:BoundField DataField="semester_credit_hours" HeaderText="Semester CH" />
        <asp:BoundField DataField="expected_grad_date" HeaderText="Graduation Date" />
        <asp:BoundField DataField="student_id" HeaderText="Student ID" />
        <asp:BoundField DataField="AdvisorID" HeaderText="Advisor ID" />
        <asp:BoundField DataField="advisor_name" HeaderText="Advisor Name" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
    <RowStyle  HorizontalAlign="Center"/>
</asp:GridView>
</asp:Content>
