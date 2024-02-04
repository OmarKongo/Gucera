<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="Advising114.Admin.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert alert-success" id="success" runat="server" role="alert">
  Issued Successfully!
</div>
        <div class="alert alert-success" id="Div1" runat="server" role="alert">
  Already Issued!
</div>
    <asp:GridView ID="GridView1" runat="server" CssClass="" AutoGenerateColumns="False" ShowFooter="True"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="payment_id" HeaderText="ID" />
        <asp:BoundField DataField="amount" HeaderText="Amount" />
        <asp:BoundField DataField="startdate" HeaderText="Start Date" />
        <asp:BoundField DataField="deadline" HeaderText="Deadline" />
        <asp:BoundField DataField="n_installments" HeaderText="Installments" />
        <asp:BoundField DataField="fund_percentage" HeaderText="Fund Percentage" />
        <asp:BoundField DataField="status" HeaderText="Status" />
        <asp:BoundField DataField="semester_code" HeaderText="Semester" />
        <asp:BoundField DataField="studentID" HeaderText="Student ID" />
        <asp:BoundField DataField="f_name" HeaderText="First Name" />
        <asp:BoundField DataField="student_id" HeaderText="Last Name" />
 
 
        <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-success rounded-pill" SelectText="Issue" ShowSelectButton="True" />
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
