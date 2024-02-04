<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="ADDRequest.aspx.cs" Inherits="Advising114.Student.ADDRequest" %>
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
        <div class="alert  alert-success" id="success" runat="server" role="alert">
  Request Sent...
</div>
    <div class="alert alert-danger"  runat="server" id="alert"   role="alert">
  Request Failed To SENT!
</div>
    
        <div>
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
                                             <asp:Button  runat="server" class="btn btn-outline-dark btn-lg mx-auto" OnClick="Button1_Click" ID="Button1" Text="Show Courses" />
                                            <asp:Button type="submit" runat="server" class="btn btn-outline-dark btn-lg mx-auto" OnClick="RequestCourseButton_Click" ID="RequestCourseButton" Text="Add Request" />
                                     
                                            </div>
                                    </form>
                                </div>
                    
                    
    
   
</asp:Content>
