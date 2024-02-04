<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddExam.aspx.cs" Inherits="Advising114.Admin.AddExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" id="success" runat="server" role="alert">
  Added Successfully!
</div>
                     <div class="d-flex align-content-center justify-content-center" style="margin-left: 20px; margin-bottom: 30px; margin-top: 50px">
                     <label style="margin-top:20px;margin-right:7px">Exam Date :</label>
                     <div class="input-group mt-2" style="width: 200px">
                        
                         <%--<span class="input-group-text"><i class="fa-solid fa-copyright"></i></span>--%>
                         <input runat="server"  type="datetime-local" class="form-control w-50 bg-light" id="examDate" style=" font-size: larger;background-color:lavender;" />
                    
                         </div>
                 </div>
                 <div class=" d-flex align-content-center justify-content-center mt-3 ">
           <asp:Button  runat="server" CssClass="btn btn-primary" Text="Show Courses" OnClick="Unnamed_Click3"/>                                 
      <asp:DropDownList runat="server"   id="finalDrop1" style="background-color:lavender; margin-left:20px; margin-top:15px;  text-align:center" CssClass=" rounded-pill">
    
</asp:DropDownList>

                                    <asp:DropDownList runat="server"   id="dropType" style="background-color:lavender; margin-left:100px;margin-top:15px;  text-align:center" CssClass=" rounded-pill">
    <asp:ListItem  Selected="True" hidden="True">Type</asp:ListItem>
    <asp:ListItem>Normal</asp:ListItem>
    <asp:ListItem>First MakeUp</asp:ListItem>
    <asp:ListItem>Second MakeUp</asp:ListItem>
</asp:DropDownList>
                       
                     


                 </div>
               
                
             
             <div style="margin-left: 230px; margin-bottom: 30px; margin-top: 90px;margin-left:760px">
                 <asp:Button runat="server" OnClick="Unnamed_Click2"  type="button" class="btn btn-primary" Text="Add" />
             </div>
     
</asp:Content>
