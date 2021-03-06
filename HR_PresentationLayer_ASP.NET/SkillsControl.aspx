﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HRClerkMaster.Master" AutoEventWireup="true" CodeBehind="SkillsControl.aspx.cs" Inherits="HR_PresentationLayer_ASP.NET.SkillsControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" runat="server">
  


       
     <br />
    <br />
			<center>
				<table style="width:auto ">
	
                        <tr>
                            <td style="width: 173px">
                                 <asp:Label ID="lblSkillName" runat="server" Text="Skill Name"></asp:Label>
                                <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td style="width: 248px">
                                  <asp:TextBox ID="txtSkillName" runat="server"></asp:TextBox>                
                            </td>
                            <td>
                          <asp:RequiredFieldValidator ID="rfvSkillName" runat="server" Display="Dynamic"  ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtSkillName" Text="Skill Name is Required" />
                       </td>
      
                        </tr>
                    <tr>
                            <td style="width: 173px">
                                 <asp:Label ID="lblSkillDes" runat="server" Text="Skill Description"></asp:Label>
                                <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td style="width: 248px">
                                  <asp:TextBox ID="txtSkillDes"  TextMode="MultiLine" Rows="6" Columns="10" runat="server"></asp:TextBox>                
                            </td>
                            <td>
                          <asp:RequiredFieldValidator ID="rfvSkillDes" runat="server" Display="Dynamic"  ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtSkillDes" Text="Skill Description is Required" />
                       </td>
      
                        </tr>
                    <tr>
                            <td style="width: 173px">
                                 <asp:Label ID="lblCatID" runat="server" Text="Category"></asp:Label>
                                 <asp:Label Text="*" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                            <td style="width: 248px">
                                   <asp:DropDownList ID="ddCategory" CssClass="browser-default" runat="server" Width="244px" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>                         
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select * from balaji.Category_HR_Batch4"></asp:SqlDataSource>
                            </td>
                            <td>
                          <asp:RequiredFieldValidator ID="rfvCatId" runat="server" Display="Dynamic"  ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddCategory" Text="CategoryId is Required"/>
                       </td>
      
                        </tr>

                        <tr>
							<td style="width: 173px">
								
							</td>
							<td style="width: 248px">  
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                <asp:Button ID="btnInsert" CssClass="waves-effect waves-light btn" Text="Insert" runat="server" style="left: 78px; top: 0px" OnClick="btnInsert_Click"/>  
							</td>
							<td>
								
							</td>
						</tr>

    
                 </table>
			</center>
		
   
</asp:Content>
