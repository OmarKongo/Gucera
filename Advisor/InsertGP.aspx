<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/Advisor.Master" AutoEventWireup="true" CodeBehind="InsertGP.aspx.cs" Inherits="Advising114.Advisor.InsertGP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="border border-3  justify-content-center align-items-center container ">
    <h4 class=" h3 m-3 text-center text fw-bolder">Insert A Graduation Plan</h4>
    <%--<form class=" w-50 mx-auto py-5 shadow p-4 h-50" runat="server">--%>
    <%--<hr style="height: 2px; background-color: black" />--%>
    <div class="d-flex col-sm-2 mx-auto input-group justify-content-center w-50" style="width: 300px; margin-left: 80px; margin-bottom: 20px; margin-top: 10px">
        <%--<span class=" input-group-text"><i class="fa-solid fa-user"></i></span>--%>
        <div id="div1" class="d-flex justify-content-center align-items-center container m-3">
            <asp:TextBox runat="server" required="required" ID="SemesterCode" CssClass="border border-3 p-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="Semester Code" BorderColor="White" TextMode="Phone"></asp:TextBox>
            <asp:TextBox runat="server" ID="studentid" pattern="[0-9]+" required="required" CssClass="border border-3 w-50 p-3 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="student-id" BorderColor="White" TextMode="Phone"></asp:TextBox>
            <%--<asp:TextBox runat="server" required="required" ID="password" CssClass="border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="password" BorderColor="White" TextMode="Password"></asp:TextBox>--%>
        </div>
        <div class="d-flex justify-content-center align-items-center container m-3">
            <asp:TextBox runat="server" ID="semester_credit_hours" pattern="[0-9]+" required="required" CssClass="p-3 border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="semester_credit_hours" BorderColor="White" TextMode="Phone"></asp:TextBox>
            <asp:TextBox runat="server" ID="expected_grad_date" required="required" CssClass="border border-3 p-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="expected_grad_date" BorderColor="White" TextMode="date"></asp:TextBox>
        </div>
        <%--<div class="d-flex justify-content-center align-items-center container m-3">
            <asp:TextBox runat="server" ID="advisorid" pattern="[0-9]+" required="required" CssClass="p-3 border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="advisor-id" BorderColor="White" TextMode="Phone"></asp:TextBox>
        </div>--%>
        <div>
            <asp:Button ID="add" runat="server" CssClass="btn btn-primary" Text="Add" OnClick="insertGP" />
        </div>
    </div>
    <%-- </form>--%>
</div>
</asp:Content>
