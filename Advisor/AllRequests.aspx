<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/Advisor.Master" AutoEventWireup="true" CodeBehind="AllRequests.aspx.cs" Inherits="Advising114.Advisor.AllRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center align-items-center container m-3 p-3 gap-3">
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="request_id" HeaderText="RequestID" />
            <asp:BoundField DataField="type" HeaderText="Type" />
            <asp:BoundField DataField="comment" HeaderText="Comment" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="credit_hours" HeaderText="Credit Hours" />
            <asp:BoundField DataField="course_id" HeaderText="CourseID" />
            <asp:BoundField DataField="student_id" HeaderText="StudentID" />
            <asp:BoundField DataField="advisor_id" HeaderText="AdvisorID" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        </div>
</asp:Content>
