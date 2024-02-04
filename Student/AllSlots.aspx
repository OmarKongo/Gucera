<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="AllSlots.aspx.cs" Inherits="Advising114.Student.AllSlots" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <asp:GridView ID="GridView5" style="margin-left:200px;margin-top:50px"   runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="CourseID" HeaderText="Course ID" />
        <asp:BoundField DataField="Course" HeaderText="Name" />
        <asp:BoundField DataField="slot_id" HeaderText="Slot ID" />
        <asp:BoundField DataField="day" HeaderText="Day" />
        <asp:BoundField DataField="time" HeaderText="Time" />
        <asp:BoundField DataField="location" HeaderText="Location" />
        <asp:BoundField DataField="course_id" HeaderText="Course ID" />
        <asp:BoundField DataField="instructor_id" HeaderText="Instructor ID" />
        <asp:BoundField DataField="Instructor" HeaderText="Instructor Name" />
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
