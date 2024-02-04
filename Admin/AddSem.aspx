<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSem.aspx.cs" Inherits="Advising114.Admin.AddSem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="alert alert-success" id="success" runat="server" role="alert">
  Added Successfully!
</div>
            <div class="d-flex align-content-center justify-content-center" style="margin-left: 20px; margin-bottom: 30px; margin-top: 200px">
            <label runat="server" style="margin-right: 5px; margin-top: 15px; width: 70px">Semester Code</label>
            <div class="input-group mt-2" style="width: 150px">
                <span class="input-group-text"><i class="fa-solid fa-barcode"></i></span>
                <input runat="server"  type="text" required="required" class="form-control w-25 " id="semCode" style="width: 50%; font-size: larger; border-color: black" />
            </div>
        </div>
        <div class=" d-flex align-content-center justify-content-center mt-3 ">
            <div>
                <asp:Label runat="server" Text="Start Date"></asp:Label>

                <input runat="server" required="required" id="startDate" type="date" class="form-control input-group" style="margin-top: 5px; margin-right: 30px" />
            </div>
            <div>
                <asp:Label runat="server"  Text="End Date" CssClass="mt-3 ms-4"></asp:Label>
                <input runat="server" required="required" id="endDate" type="date" class="form-control input-group" style="margin-top: 5px; width: 200px; margin-left: 30px" />
            </div>
        </div>
    
    <div style="margin-left: 750px; margin-bottom: 30px; margin-top: 50px">
        <asp:Button runat="server" OnClick="Unnamed_Click" type="button" class="btn btn-primary" Text="Add" />
    </div>

</asp:Content>
