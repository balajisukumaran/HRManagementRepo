﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HRClerkMaster.Master" AutoEventWireup="true" CodeBehind="SkillSearch.aspx.cs" Inherits="HR_PresentationLayer_ASP.NET.SkillSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" runat="server">
    <table>
       <tr>
           <td style="width:10%">

           </td>
           <td style="width:80%">
               <br />
               <table>
                   <tr>
                       <td style="width: 128px">
                           <asp:Label runat="server">Search Skill: </asp:Label> 
               
                       </td>
                        <td style="width: auto">
                            <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="browser-default" Width="200px" runat="server" DataSourceID="SqlDataSource1" DataTextField="SkillID" DataValueField="SkillID" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select SkillID from balaji.Skill_HR_Batch4
"></asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:Button OnClick="Button1_Click" ID="Button1" CssClass="waves-effect waves-light btn" runat="server" Text="Refresh"  />
                       </td>
                       <td>
                          <asp:HyperLink ID="btnAddNew" runat="server" CssClass="waves-effect waves-light btn" Text="Add New" NavigateUrl="~/SkillsControl.aspx" ></asp:HyperLink>
                       </td>
                   </tr>
               </table>
               <br />
               <asp:Panel ID="Panel1" runat="server">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="SkillID" DataSourceID="SqlDataSource2">
                       <Columns>
                           <asp:BoundField DataField="SkillID" HeaderText="SkillID" InsertVisible="False" ReadOnly="True" SortExpression="SkillID" />
                           <asp:BoundField DataField="SkillName" HeaderText="SkillName" SortExpression="SkillName" />
                           <asp:BoundField DataField="SkillDescription" HeaderText="SkillDescription" SortExpression="SkillDescription" />
                           <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select * from balaji.Skill_HR_Batch4" 
                       UpdateCommand="Update balaji.Skill_HR_Batch4 set [SkillName]=@SkillName, [SkillDescription]=@SkillDescription, [CategoryId]=@CategoryId where [SkillID]=@SkillID"
                       DeleteCommand="Delete from balaji.Skill_HR_Batch4 where [SkillID]=@SkillID"
                       ></asp:SqlDataSource>
                   

               </asp:Panel>
               
               <asp:Panel ID="Panel2" runat="server">
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource3">
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select * from balaji.Skill_HR_Batch4 where [SkillID]=@SkillID">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList1" Name="SkillID" PropertyName="SelectedValue" />
                   </SelectParameters>
               </asp:SqlDataSource>
               </asp:Panel>
               

     
               

           </td>
               <td style="width:10%">

           </td>
       </tr>
   </table>

</asp:Content>
