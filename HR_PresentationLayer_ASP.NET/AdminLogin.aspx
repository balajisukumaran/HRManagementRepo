﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HR_PresentationLayer_ASP.NET.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name = "viewport" content = "width = device-width, initial-scale = 1"/>      
      <link rel = "stylesheet"
         href = "https://fonts.googleapis.com/icon?family=Material+Icons"/>
      <link rel = "stylesheet"
         href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css"/>
      <script type = "text/javascript"
         src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js">
      </script> 
</head>
<body>
    <form id="form1" runat="server">
              <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo  ">Stark Industries</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
       
      <li> 
          <asp:HyperLink ID="btnAdmin" runat="server" Text="Admin" NavigateUrl="~/AdminLogin.aspx" ></asp:HyperLink>

      </li>
      <li>
          <asp:HyperLink ID="btnHrClerk" runat="server" Text="HRClerk" NavigateUrl="~/HRClerkLogin.aspx" ></asp:HyperLink>
      </li>
      </ul>
    </div>
  </nav>
        <br />
        
        <br />
        
        <br />
        <table style="width:100%"> 
            <tr>
                <td style="width:33.3%"></td>
                <td>
                    <div class="row" >
            <div class="col s6 offset-s3">
                <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Admin Login</span>
            <br />
            <br />

         <asp:label runat="server" for="txtUsername">Username</asp:label>
            <asp:TextBox runat="server" ID="txtUsername" CssClass="validate"> </asp:TextBox>
            <br />
            <br />
      
         <asp:label runat="server" for="txtPassword">Password</asp:label>
            <asp:TextBox runat="server" ID="txtPassword" CssClass="validate"> </asp:TextBox>
        </div>
        <div class="card-action">
          
              <asp:HyperLink ID="hrlUsers" runat="server" Text="Login" NavigateUrl="~/UsersControl.aspx" ></asp:HyperLink>
         
        </div>
      </div>

            </div>
            

            
        </div>
                </td>
                <td></td>
            </tr>

        </table>
        

        
      

          
  
    </form>
</body>
</html>