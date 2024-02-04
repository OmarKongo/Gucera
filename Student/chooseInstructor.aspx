<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="chooseInstructor.aspx.cs" Inherits="Advising114.Student.chooseInstructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" runat="server" id="success" role="alert">
  Linked Successfully!
</div>
    
        
            <div style="margin-top:30px">
                           <asp:GridView ID="GridView1"  runat="server" ShowFooter="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" style="margin-left:100px;margin-top:50px;margin-bottom:100px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="course_id" HeaderText="ID" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="major" HeaderText="Major" />
        <asp:CheckBoxField DataField="is_offered" HeaderText="Offered" />
        <asp:BoundField DataField="credit_hours" HeaderText="Credit Hours" />
        <asp:BoundField DataField="semester" HeaderText="Semester" />
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
                        <asp:GridView ID="GridView2"  style="margin-left:900px;margin-bottom:600px; " runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="425px" Height="131px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
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
    

</div>
    
</asp:Content>
