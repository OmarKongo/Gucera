<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteSlots.aspx.cs" Inherits="Advising114.Admin.DeleteSlots" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert alert-success" id="success" runat="server" role="alert">
  Deleted Successfully!
</div>
        <asp:GridView ID="GridView1" style="margin-left:400px;margin-top:100px" ShowFooter="True"   runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        
        <asp:BoundField DataField="semester_code" HeaderText="Semester Code" />
              
        <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-danger rounded-pill" ShowSelectButton="True" SelectText="Delete Slots" />
        
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
