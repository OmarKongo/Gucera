<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdvisorReg.aspx.cs" Inherits="Advising114.AdvisorReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/RegAsAdvisor.css" />
    <style> 
     
    </style>
</head>
<body>
     <form class=" w-50 mx-auto py-5 shadow p-4 h-50"  runat="server">
    <div class="min-vh-100  align-items-center container ">
       
            <h3 class=" h3 text-center text fw-bolder">Register As Advisor</h3><hr  style="height:3px;background-color:black" />
            <div class="d-flex col-sm-2 mx-auto input-group justify-content-center w-100" style="width:300px; margin-left:80px; margin-bottom:20px;margin-top:10px" >
                <%--<span class=" input-group-text"><i class="fa-solid fa-user"></i></span>--%>
                <div id="div1" class="d-flex justify-content-center align-items-center container m-3">
                    <asp:TextBox runat="server" ID="advisorName" required="required"  CssClass="border border-3 p-3 w-50 h-50 form-control float-start m-2 me form-check-input w-75 text-dark" placeholder="advisor-name" BorderColor="White" TextMode="Phone"></asp:TextBox> 
                    <asp:TextBox runat="server" ID="password" required="required" CssClass="border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="password" BorderColor="White" TextMode="Password"></asp:TextBox>
                </div>
                <div class="d-flex justify-content-center align-items-center container m-3">
                    <asp:TextBox runat="server" ID="email" required="required" CssClass="p-3 border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="email" BorderColor="White" TextMode="Phone"></asp:TextBox>
                    <asp:TextBox runat="server" ID="office" required="required" CssClass="border border-3 w-50 h-50 form-control m-2 form-check-input w-75 text-dark" placeholder="office" BorderColor="White" TextMode="Phone"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btn" runat="server" CssClass="btn btn-dark" Text="Register" OnClick="Register"  />    
                </div>
            </div>
       
    </div>
          </form></body>
</html>
