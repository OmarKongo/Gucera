<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="ExamsCourses.aspx.cs" Inherits="Advising114.Student.ExamsCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" CssClass="mt-3 ms-5" ShowFooter="true" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
     <AlternatingRowStyle BackColor="#CCCCCC" />
     <Columns>
         <asp:BoundField DataField="exam_id" HeaderText="Exam ID" />
         <asp:BoundField DataField="date" HeaderText="Date" />
         <asp:BoundField DataField="type" HeaderText="Type" />
         <asp:BoundField DataField="course_id" HeaderText="Course ID" />
         <asp:BoundField DataField="name" HeaderText="Name" />
         <asp:BoundField DataField="semester" HeaderText="Semester" />
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
