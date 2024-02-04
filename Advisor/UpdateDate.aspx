<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/Advisor.Master" AutoEventWireup="true" CodeBehind="UpdateDate.aspx.cs" Inherits="Advising114.Advisor.UpdateDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="border border-3 justify-content-center align-items-center container ">
    <h4 class=" h3 m-3 text-center text fw-bolder">Update the Expected Graduation Date</h4>
    <div class="d-flex col-sm-2 mx-auto input-group justify-content-center w-50" style="width: 300px; margin-left: 80px; margin-bottom: 20px; margin-top: 10px">
        <div class="d-flex justify-content-center align-items-center container m-3">
            <asp:TextBox runat="server" ID="expected_grad_date_new" required="required" CssClass="border border-3 p-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="The new expected graduation date" BorderColor="White" TextMode="date"></asp:TextBox>
            <asp:TextBox runat="server" ID="studentId1" pattern="[0-9]+" required="required" CssClass="border border-3 p-3 w-50 h-50 form-control float-start m-2 me form-check-input w-75 text-dark" placeholder="student-id" BorderColor="White" TextMode="Phone"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="update" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="updateGP" />
        </div>
    </div>
</div>
</asp:Content>
