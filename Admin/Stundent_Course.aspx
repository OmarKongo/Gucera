<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Stundent_Course.aspx.cs" Inherits="Advising114.Admin.Stundent_Course" %>
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
               <asp:GridView ID="GridView2"  runat="server" ShowFooter="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="margin-left:100px;margin-top:50px;margin-bottom:100px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="course_id" HeaderText="ID" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        
        <asp:CommandField ButtonType="Button" ShowSelectButton="True"  ControlStyle-CssClass="btn btn-primary rounded-pill"/>
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
                            <asp:GridView ID="GridView3"  style="margin-left:900px;margin-top:-350px " runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="425px" Height="131px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="instructor_id" HeaderText="Instructor ID" />
        <asp:BoundField DataField="name" HeaderText="Instructor" />
        <asp:CommandField ButtonType="Button" ShowSelectButton="True"  ControlStyle-CssClass="btn btn-primary rounded-pill"/>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"/>
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
    <RowStyle  HorizontalAlign="Center"/>
</asp:GridView>
    <input  runat="server" required="required" id="sem"/>
</asp:Content>
