<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/Advisor.Master" AutoEventWireup="true" CodeBehind="MyStudents.aspx.cs" Inherits="Advising114.Advisor.MyStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main aria-labelledby="title">
    <div class="d-flex justify-content-center align-items-center container m-3 p-3 gap-3">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="StudentID" />
                <asp:BoundField DataField="f_name" HeaderText="Student Name" />
                
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
        </main>
</asp:Content>
