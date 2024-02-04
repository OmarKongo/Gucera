<%@ Page Title="" Language="C#" MasterPageFile="~/Advisor/Advisor.Master" AutoEventWireup="true" CodeBehind="DeleteCourse.aspx.cs" Inherits="Advising114.Advisor.DeleteCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="border border-3 justify-content-center align-items-center container ">
    <h4 class=" h3 m-3 text-center text fw-bolder">Delete Course Form A Certain Graduation Plan</h4>
    <div class="d-flex col-sm-2 mx-auto input-group justify-content-center w-50" style="width: 300px; margin-left: 80px; margin-bottom: 20px; margin-top: 10px">
        <div class="d-flex justify-content-center align-items-center container m-3">
            <asp:TextBox runat="server" ID="studentId2" required="required" CssClass="border border-3 p-3 w-50 h-50 form-control float-start m-2 me form-check-input w-75 text-dark" pattern="[0-9]+" placeholder="student-id" BorderColor="White" TextMode="Phone"></asp:TextBox>
            <asp:TextBox runat="server" ID="code2" required="required" CssClass="border border-3 p-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="Semester Code" BorderColor="White" TextMode="Phone"></asp:TextBox>
        </div>
        <div class="d-flex justify-content-center align-items-center container m-3">
            <asp:TextBox runat="server" ID="courseId2" pattern="[0-9]+" required="required" CssClass="p-3 border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="course-id" BorderColor="White" TextMode="Phone"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Delete" OnClick="deleteC" />
        </div>
    </div>
    <%-- </form>--%>
</div>
</asp:Content>
