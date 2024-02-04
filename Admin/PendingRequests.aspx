<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PendingRequests.aspx.cs" Inherits="Advising114.Admin.PendingRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" CssClass="m-3" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="557px" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="request_id" HeaderText="ID" />
                    <asp:BoundField DataField="type" HeaderText="Type" />
                    <asp:BoundField />
                    <asp:BoundField DataField="comment" HeaderText="Comment" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                    <asp:BoundField DataField="credit_hours" HeaderText="Credit Hours" />
                    <asp:BoundField DataField="course_id" HeaderText="Course ID" />
                    <asp:BoundField DataField="student_id" HeaderText="Student ID" />
                    <asp:BoundField />
                    <asp:BoundField DataField="advisor_id" HeaderText="Advisor ID" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC"  />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"  CssClass="m-2 p-2"  />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                <RowStyle  HorizontalAlign="Center" CssClass=" m-2"/>
               
                </asp:GridView>
    
</asp:Content>
