<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ActiveStudents.aspx.cs" Inherits="Advising114.Admin.ActiveStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <asp:GridView ID="GridView1" CssClass=" table-danger m-3 " runat="server"  BorderColor="#999999" BorderStyle="Groove" BorderWidth="1px"  CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="78%" EmptyDataText="Null" ShowFooter="True" AutoGenerateColumns="False" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="f_name" HeaderText="First Name" ReadOnly="True" />
                <asp:BoundField DataField="l_name" HeaderText="Last Name" ReadOnly="True" />
                <asp:BoundField DataField="password" HeaderText="Password" ReadOnly="True" />
                <asp:BoundField DataField="gpa" HeaderText="GPA" ReadOnly="True" />
                <asp:BoundField DataField="faculty" HeaderText="Faculty" ReadOnly="True" />
                <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True"   />
                <asp:BoundField DataField="major" HeaderText="Major" ReadOnly="True" />
                <asp:CheckBoxField DataField="financial_status"  ControlStyle-CssClass="" HeaderText="Status" ReadOnly="True" FooterStyle-BorderColor="#FF9999" ItemStyle-BorderStyle="NotSet" FooterStyle-ForeColor="#FF9966" >
<FooterStyle BorderColor="#FF9999" ForeColor="#FF9966"></FooterStyle>
                </asp:CheckBoxField>
                <asp:BoundField DataField="semester" HeaderText="Semester" ReadOnly="True" />
                <asp:BoundField DataField="acquired_hours" HeaderText="Acquired Hours" ReadOnly="True" />
                <asp:BoundField DataField="assigned_hours" HeaderText="Assigned Hours" ReadOnly="True" />
                <asp:BoundField DataField="advisor_id" HeaderText="Advisor ID" ReadOnly="True" />
              
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
                <RowStyle  HorizontalAlign="Center"/>
        </asp:GridView>
</asp:Content>
