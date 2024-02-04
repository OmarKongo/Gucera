<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="AddMobile.aspx.cs" Inherits="Advising114.Student.AddMobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" id="success" runat="server" role="alert">
  Added Successfully!
</div>
    <div class="container mt-5 ">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h2>Add Your Telephone Number</h2>
            <div class="col">
            <hr/> <hr/>
            </div>
            
                <div class="mb-3">
                    <label for="inputTelephone" class="form-label">Telephone Number</label>
                    <input type="text" runat="server" class="form-control bg-custom" id="inputTelephone" placeholder="Enter telephone number" required="required" pattern="[0-9]+" />
                </div>
                <div class="col">
                <hr/> <hr/>
                </div>
                <asp:Button type="submit" runat="server" class="btn btn-outline-dark btn-lg" OnClick="AddTelephoneButton_Click" id="AddTelephoneButton" Text="Add Telephone Number" />
           
        </div>
    </div>
</div>
</asp:Content>
