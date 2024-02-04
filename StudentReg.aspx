<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="Advising114.Student.StudentReg" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Register Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<style>
        body {
            background-image: url("../images/bg1.jpg"); 
            background-repeat: no-repeat; 
            background-size: cover; 
            
        }

        .custom-card-body {
        background-color: rgba(142, 185, 255, 0.3);
        background-blend-mode: lighten;
        padding: 20px; 
      
    }

        .bg-custom {
        background-color: aliceblue; 
    }

    </style>

</head>
<body>
 
 
    <div class="container">
        <div class="alert alert-primary" role="alert"" role="alert">
  <h4 class="alert-heading">Sign Up Here!</h4>
  <p> please enter your correct information.</p>
</div>
     <div class="row">
<div class="col=md-6 mx=auto">
    

    <div class="col">
        <center>
            <img width="150px" src="../images/card.png" />
        </center>
    </div>

    <div class="col">
    <center>
        <h3> Student Registeration </h3>
    </center>
</div>

        <div class="col">
            <hr> </hr>
        </div>

    <form class="row g-3" runat="server">
  <div class="form-floating col-md-6">
    <input type="text" runat="server" class="form-control bg-custom" id="inputLastName" placeholder="eg Mark" required>
    <label for="inputFirstName" class="form-label">First Name</label>
  </div>
  <div class="form-floating col-md-6">
    <input type="text" runat="server" class="form-control bg-custom" id="inputFirstName" placeholder="eg Lee" required>
    <label for="inputLastName" class="form-label">Last Name</label>  
  </div>
  <div class="form-floating col-md-6">
  <input type="email" runat="server" class="form-control bg-custom" id="inputEmail" placeholder="name@example.com" required>
  <label for="inputEmail">Email address</label>
</div>
<div class="form-floating col-md-6">
  <input type="password" runat="server" class="form-control bg-custom" id="inputPassword" placeholder="Password" required>
  <label for="inputPassword">Password</label>
</div>
  <div class="form-floating col-md-6">
    <input type="text" runat="server" class="form-control bg-custom" id="inputFaculty" placeholder="eg Engineering" required>
    <label for="inputFaculty" class="form-label">Faculty</label>
  </div>
  <div class="form-floating col-md-4">
    <input type="text" runat="server" class="form-control bg-custom" id="inputMajor" placeholder="eg MET" required>
    <label for="inputMajor" class="form-label">Major</label> 
    </div>
  <div class="form-floating col-md-2">
     <input type="text" runat="server" class="form-control bg-custom" id="inputSemester" placeholder="1" required>
     <label for="inputSemester" class="form-label">Semester</label>
  </div>
    <div class="d-grid col-12 gap-2">
        <asp:Button type="submit" runat="server" class="btn btn-outline-dark btn-lg mt-1" OnClick="SignInButton_Click" id="SignInButton" Text="Sign Up" />
</div>
</form>
</div>
</div>
</div>


</body>
</html>


