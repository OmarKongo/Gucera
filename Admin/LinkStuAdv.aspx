<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="LinkStuAdv.aspx.cs" Inherits="Advising114.Admin.LinkStuAdv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" id="success" runat="server" role="alert">
  Linked Successfully!
</div>
                <asp:GridView ID="GridView1" CssClass=" table-danger "  runat="server"  BorderColor="#999999"  BorderWidth="1px"  CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="50%" EmptyDataText="Null" ShowFooter="True" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="f_name" HeaderText="First Name" ReadOnly="True" />
                <asp:BoundField DataField="l_name" HeaderText="Last Name" ReadOnly="True" />              
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary rounded-pill" />
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
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="advisor_id" HeaderText="ID" />
        <asp:BoundField DataField="advisor_name" HeaderText="Name" />
        
        <asp:CommandField ButtonType="Button" ShowSelectButton="True" ControlStyle-CssClass="btn btn-primary rounded-pill" />
        
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

    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowFooter="true" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="student_id" HeaderText="Student ID" />
        <asp:BoundField DataField="f_name" HeaderText="First Name" />
        <asp:BoundField DataField="l_name" HeaderText="Last Name" />
        <asp:BoundField DataField="advisor_id" HeaderText="Advisor ID" />
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
