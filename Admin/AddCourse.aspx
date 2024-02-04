<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="Advising114.Admin.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" id="success" runat="server" role="alert">
  Added Successfully!
</div>
                     <%--<h5 class="justify-content-center align-content-center">Add Course</h5>--%>
                 
             
             
                 <div class="d-flex align-content-center justify-content-center" style="margin-left: 20px; margin-bottom: 30px; margin-top: 10px">
                     
                     <div class="input-group mt-2" style="width: 200px">
                         <span class="input-group-text"><i class="fa-solid fa-copyright"></i></span>
                         <input runat="server"  type="text" class="form-control w-50 bg-light " required="required" id="cName" placeholder="Course Name" style=" font-size: larger;background-color:lavender; border-color: black;" />
                     </div>
                 </div>
                 <div class=" d-flex align-content-center justify-content-center mt-3 ">
                    
                         
                          <div class="input-group mt-2 " style="width:200px;height:40px;margin-top:10px">
     <span class="input-group-text"><i class="fa-solid fa-medal"></i></span>
                         <input runat="server" required="required" id="major" type="text"  placeholder="Major" class="form-control w-50 text-dark " style=" margin-right: 40px;font-size:larger" />
                    
                              </div>
                    
                          <div class="input-group mt-2" style="width: 200px;margin-left:30px;margin-bottom:30px">
     <span class="input-group-text"><i class="fa-solid fa-certificate"></i></span>
                         <input runat="server" id="semester" type="text" required="required"  class="form-control" placeholder="Semester" style="     font-size:larger;" />
                     </div>


                 </div>
                 <div class=" d-flex align-content-center justify-content-center mt-3 ">
                                      <div class="input-group mt-2" style="width: 200px;margin-left:70px;margin-top:100px";>
<span class="input-group-text"><i class="fa-solid fa-certificate"></i></span>
                    <input runat="server" id="hours" type="text" required="required"  class="form-control" placeholder="Credit Hours" style="     font-size:larger;margin-right:50px" />
                </div>
                <div class="m-2" style="">
                    <label runat="server" style="font-size:larger ;">Offered</label>
                    <asp:CheckBox runat="server" ID="offered"/>
                </div>    
             </div>
             <div style="margin-left: 700px; margin-bottom: 30px; margin-top: 50px">
                 <asp:Button runat="server" OnClick="Unnamed_Click1" type="button"  class="btn btn-primary" Text="Add" />
             </div>
     
    
</asp:Content>
