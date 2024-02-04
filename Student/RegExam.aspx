<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="RegExam.aspx.cs" Inherits="Advising114.Student.RegExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
            body {
        background-image: url(../images/bg1.jpg); 
        background-repeat: no-repeat; 
        background-size: cover; 
        background-attachment:fixed
        
    }

    .custom-card-body {
    background-color: rgba(142, 185, 255, 0.3);
    background-blend-mode: lighten;
    padding: 20px; 
  
}

    .bg-custom {
    background-color: aliceblue; 
}

    .btn-light-blue {
        background-color: aliceblue; 
         
}


    </style>
            <div class="alert alert-danger" id="alert" runat="server" role="alert">
  Failed To Register!!!!!
</div>
    <div class="alert alert-success" id="success" runat="server" role="alert">
  Exam Registered Successfully!!
</div>
    <div class="container">
        <div class="alert alert-primary" role="alert"" role="alert">
  <h4 class="alert-heading">Register for Makeup 1 or 2:</h4>
  <p> please enter your correct information.</p>
</div>
     <div class="row">
<div class="col=md-6 mx=auto">
    

    <div class="col">
        <center>
            <img width="150px" src="../images/exam.png"/>
        </center>
    </div>

    <div class="col">
    <center>
        <h3> Makeup Registeration </h3>
    </center>
</div>

        <div class="col">
            <hr> </hr>
        </div>
    
   
  
  
         
  
  <div class="dropdown col-md-6">
       <asp:Button type="submit" runat="server" OnClick="show_Click" class="btn btn-outline-dark btn-lg" style="margin-top:40px" id="show" Text="Show Courses" />
              <asp:DropDownList runat="server" ID="finalCourses" CssClass="btn btn-dark" style="height:50px;font-size:large;margin-left:200px;margin-top:30px">
    
</asp:DropDownList>
      <asp:DropDownList runat="server" ID="Type"  CssClass=" rounded-pill btn btn-light" style=" text-align:center; height:50px;width:200px;font-size:larger;margin-left:700px;margin-top:-50px;margin-bottom:80px;font-weight:600">
          <asp:ListItem   hidden="True"  Selected="True"  >Type</asp:ListItem>
          <asp:ListItem style="background-color:darkseagreen">First</asp:ListItem>
          <asp:ListItem style="background-color:darksalmon;height:40px" CssClass="text-black text-dark ">Second</asp:ListItem>


      </asp:DropDownList>
    

</div>
        
    <div class="d-grid col-12 gap-2">
        <asp:Button type="submit" runat="server" OnClick="RegButton_Click" class="btn btn-outline-dark btn-lg" style="margin-top:40px" id="RegButton" Text="Register" />
</div>
</asp:Content>
