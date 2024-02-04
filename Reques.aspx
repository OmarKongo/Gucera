<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reques.aspx.cs" Inherits="Advising114.Reques" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Register Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<style>
        body {
            background-image: url(../images/4b.jpg); 
            background-repeat: no-repeat; 
            background-size: cover; 
        
        }

        .bg-custom {
            background-color: rgba(142, 185, 255, 0.3);
        }
        .vl {
  border-left: 4px solid lavender;
  height: 70px;
  position: absolute;
  left: 50%;
  margin-left: 180px;
  top: 0;
}


</style>

</head>
<body>
                    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#e3f2fd">
  <div class="container-fluid">
    <asp:Label CssClass="navbar-brand" runat="server" ID="name" ></asp:Label>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Student/StudentHome.aspx">Home</a>

        </li>
          <li class="nav-item">
  <a class="nav-link active" aria-current="page" href="Student/chooseInstructor.aspx">Choose Instructor</a>
</li>
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            View Courses
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Student/OptionalCourses.aspx">Optional Courses</a></li>
            <li><a class="dropdown-item" href="Student/Available Courses.aspx">Available Courses</a></li>
              <li><a class="dropdown-item" href="Student/RemCourses.aspx">Remaining Courses</a></li>
               <li><a class="dropdown-item" href="Student/preCourses.aspx">Courses Prerequisites</a></li>
              <li><a class="dropdown-item" href="Student/ExamsCourses.aspx">Course x Exam</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="Student/GP.aspx">Graduation Plan</a></li>
              <li><a class="dropdown-item" href="Student/Unpaid Installment.aspx">Unpaid Installment</a></li>
          </ul>
        </li>
          <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    View Slots
  </a>
  <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
    <li><a class="dropdown-item" href="Student/AllSlots.aspx">ALL Courses</a></li>
    <li><a class="dropdown-item" href="Student/CertainSlots.aspx">Certain Course</a></li>
      
  </ul>
</li>
                    <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    ADD
  </a>
  <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
      <li><a class="dropdown-item" href="Student/AddMobile.aspx">Add Mobile</a></li>
    <li><a class="dropdown-item" href="Student/ADDRequest.aspx">Course/CH Request</a></li>
    <li><a class="dropdown-item" href="Student/RegExam.aspx">Makeup Registeration</a></li>
      
  </ul>
</li>
        
      </ul>
      <form class="d-flex">
                       <a class="navbar-brand" runat="server" href="~/Login.aspx">
    <asp:label id="label2" runat="server" style="margin-left:40px">LOG OUT</asp:label>
</a>
      </form>
    </div>
  </div>
</nav>
    <div class="alert  alert-success" id="success" runat="server" role="alert">
  Request Sent...
</div>
    <div class="alert alert-danger"  runat="server" id="alert"   role="alert">
  Request Failed To SENT!
</div>
    <form id="form1" runat="server">
        <div>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

                <div class="carousel-inner ">
                    <div class="carousel-item active ">
                        <div class="container mt-5">
                            <div class="alert alert-primary" role="alert">
                                <h4 class="alert-heading text-center">Course/CH Request Form</h4>
                                <p class="text-center">Please enter your correct information.</p>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mx-auto">
                                    <div class="col text-center">
                                        <h3>Course/CH Request</h3>
                                    </div>
                                    <div class="col text-center">
                                        <hr>
                                    </div>
                                    <form class="row g-3">
                                        <div class="form-floating col-md-6 mx-auto">
                                            <input type="text" runat="server" class="form-control bg-custom text-center" id="inputType" placeholder="eg CSEN501" >
                                            <label for="inputType" class="form-label">Type</label>
                                        </div>
                                       
                                        <div class="form-floating d-flex col-md-3 m-5 ">
                <input type="text" runat="server" style="margin-right:220px" class="form-control bg-custom text-center col-md-3" id="inputCredit" placeholder="eg" pattern="[0-9]+"/>
                                            <label for="inputCredit">CreditHours</label>
                                            <div class="vl"></div>
                                            <div class="d-flex">
                                            <asp:DropDownList runat="server" ID="finalCourses" CssClass="btn btn-dark" style="height:50px;font-size:large;margin-right:50px">
                                                
                                            </asp:DropDownList>
                                                  <asp:Button  runat="server" class="btn btn-outline-dark btn-lg mx-auto" OnClick="Button1_Click" ID="Button1" Text="Show Courses" />
                                                <asp:DropDownList runat="server" ID="initCourses" Visible="false" CssClass="btn btn-dark" style="height:50px;font-size:large">
    
</asp:DropDownList>  <asp:DropDownList runat="server" ID="DropIDs" Visible="false" CssClass="btn btn-dark" style="height:50px;font-size:large">
    
</asp:DropDownList>
                                        </div>
                                            </div>
                                        <div class="form-floating col-md-6 mx-auto">
                                            <input type="text" runat="server" class="form-control bg-custom text-center" id="inputComment" placeholder="comment" />
                                            <label for="inputComment">Comment</label>
                                        </div>

                                        <div class="col text-center">
                                            <hr>
                                        </div>
                                        

 <div class="col text-center">
    <hr/>
       
</div>


                                        <div class="d-grid col-12 gap-2" runat="server">
                                            <asp:Button type="submit" runat="server" class="btn btn-outline-dark btn-lg mx-auto" OnClick="RequestCourseButton_Click" ID="RequestCourseButton" Text="Add Request" />
                                     
                                            </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="carousel-inner ">
    <div class="carousel-item "  runat="server">
                                               <div class="container mt-5">
                    <div class="alert alert-primary" role="alert">
                        <h4 class="alert-heading text-center">Credit Hours Request Form</h4>
                        <p class="text-center">Please enter your correct information.</p>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <div class="col text-center">
                                <h3>Credit Hours Request</h3>
                            </div>
                            <div class="col text-center">
                                <hr>
                            </div>  
                            <form class="row g-3">
                                
                               <%-- <div class="d-grid col-12 gap-2 ">
                                     <%-- <asp:Button runat="server"  class="btn btn-outline-dark btn-lg mx-auto"  OnClick="RequestCHButton_Click"   id="RequestCHButton"  Text="Request Credit Hours"/>--%>
                                  <%--<asp:Button runat="server" CssClass=" carousel-button "  Text="Request Credit Hours" OnClick="RequestCHButton_Click" />
                                </div>--%>
                                 
                            </form>
        

                        </div>
                  </div>
                    </div>
                </div>
    </div>
        
  </div>
                  
  
</div>
        </div>
    </form>
</body>
</html>
