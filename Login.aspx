<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Advising114.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <link rel="icon" href="images/SK.png" />
    <title>GUC</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/login.css" />
   
    <link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,300&display=swap" rel="stylesheet" />
</head>
<body class="bg" style=" background-attachment:fixed" runat="server">

        <div class="    min-vh-100 d-flex justify-content-center align-items-center container ">
            <form class=" w-50 mx-auto py-5 shadow p-4 h-50"  runat="server">
                <h3 class=" h3 text-center text fw-bolder">Login</h3><hr  style="height:3px;background-color:black" />
            <div class="  col-sm-2 input-group  ms-7 justify-content-center " style="width:300px; margin-left:80px; margin-bottom:20px;margin-top:10px" >
           
        
           <span class=" input-group-text"><i class="fa-solid fa-user"></i></span>
        <asp:TextBox runat="server" ID="idEntry" pattern="[0-9]+" CssClass="form-control w-75  text-dark" placeholder="User-ID" BorderColor="White" TextMode="Phone"></asp:TextBox>         
      </div>
           
                
      <div class="input-group pt-3 ms-7  col-sm-2  " style="width:300px; margin-left:80px;" >
         <span class=" input-group-text"><i class="fa-solid fa-lock"></i></span>
    <asp:TextBox runat="server" ID="passEntry"   CssClass="form-control w-75 row-cols-xl-5 text-dark" placeholder=" Password" BorderColor="White" TextMode="Password"> </asp:TextBox>        
   <asp:HyperLink  id="hyperlink1" 
      NavigateUrl="~/AdvisorReg.aspx"
     Text="Register As Advisor ?"  
     runat="server"  Font-Size="Smaller"  CssClass=" ms-auto  text-light mt-1"  />
</div>
       
    <asp:DropDownList runat="server"  id="select" style="background-color:lavender; margin-left:180px; margin-top:15px;  text-align:center" CssClass=" rounded-pill">
        <asp:ListItem  Selected="True" hidden="True"> Role</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>Advisor</asp:ListItem>
        <asp:ListItem>Student</asp:ListItem>
    </asp:DropDownList>
                <div class="mt-1">
                    <asp:Button runat="server" type="submit" CssClass="btn btn-dark rounded-pill   text-warning w-25" Text="Login" OnClick="login"/>    
             <asp:Button runat="server" CssClass="btn btn-warning rounded-pill text-dark  w-25 "  Text="Register"  OnClick="register"/>
           
                </div>
                              
                    </form>
  

  </div>
       
            
        </body>
</html>
