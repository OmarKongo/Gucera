<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/Advisor.Master" AutoEventWireup="true" CodeBehind="studentMajor.aspx.cs" Inherits="Advising114.Advisor.studentMajor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" CssClass="ms-5 mt-5" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="student_id" HeaderText="Student ID" />
            <asp:BoundField DataField="f_name" HeaderText="Name" />
        </Columns>
    </asp:GridView>
    <asp:Button runat="server" CssClass=" m-3 btn btn-primary" type="submit" Text="Show Major"  OnClick="Unnamed_Click"/>
    <input  runat="server" id="semInput" required="required"  style="margin:50px"/>
    
</asp:Content>
