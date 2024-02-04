<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="GP.aspx.cs" Inherits="Advising114.Student.GP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" ShowFooter="true"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
     <AlternatingRowStyle BackColor="#CCCCCC" />
     <Columns>
         <asp:BoundField DataField="Student_name" HeaderText="Student Name" />
         <asp:BoundField DataField="plan_id" HeaderText="Plan ID" />
         <asp:BoundField DataField="semester_code" HeaderText="Semester" />
         <asp:BoundField DataField="semester_credit_hours" HeaderText="Semester CH" />
         <asp:BoundField DataField="expected_grad_date" HeaderText="Graduation Date" />
         <asp:BoundField DataField="advisor_id" HeaderText="Advisor ID" />
         <asp:BoundField DataField="student_id" HeaderText="Student ID" />
         <asp:BoundField DataField="course_id" HeaderText="Course ID" />
         <asp:BoundField DataField="name" HeaderText="Course Name" />
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
