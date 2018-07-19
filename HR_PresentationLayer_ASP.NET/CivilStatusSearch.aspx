﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CivilStatusSearch.aspx.cs" Inherits="HR_PresentationLayer_ASP.NET.CivilStatusSearch" %>
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
                           <asp:Label runat="server">Search Status: </asp:Label> 
               
                       </td>
                        <td style="width: auto">
                            <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="browser-default" Width="200px" runat="server" DataSourceID="SqlDataSource1" DataTextField="StatusId" DataValueField="StatusId" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="
select StatusId from balaji.CivilStatus_HR_Batch4"></asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:Button ID="Button1" CssClass="waves-effect waves-light btn" runat="server" Text="Refresh" OnClick="Button1_Click" />
                       </td>
                       <td>
                          <asp:HyperLink ID="btnAddNew" runat="server" CssClass="waves-effect waves-light btn" Text="Add New" NavigateUrl="~/CivilStatusControl.aspx" ></asp:HyperLink>
                       </td>
                   </tr>
               </table>
               <br />
               <asp:Panel ID="Panel1" runat="server">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="StatusId" DataSourceID="SqlDataSource2">
                       <Columns>
                           <asp:BoundField DataField="StatusId" HeaderText="StatusId" InsertVisible="False" ReadOnly="True" SortExpression="StatusId" />
                           <asp:BoundField DataField="StatusDescription" HeaderText="StatusDescription" SortExpression="StatusDescription" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="
select * from balaji.CivilStatus_HR_Batch4" UpdateCommand="update balaji.CivilStatus_HR_Batch4 set [StatusDescription]=@StatusDescription where [StatusId]=@StatusId" DeleteCommand="Delete from balaji.CivilStatus_HR_Batch4 where [StatusId]=@StatusId">
                       <DeleteParameters>
                           <asp:Parameter Name="StatusId" />
                       </DeleteParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="StatusDescription" />
                           <asp:Parameter Name="StatusId" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                   

               </asp:Panel>
               <asp:Panel ID="Panel2" runat="server">
                             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="StatusId" DataSourceID="SqlDataSource3">
                   <Columns>
                       <asp:BoundField DataField="StatusId" HeaderText="StatusId" InsertVisible="False" ReadOnly="True" SortExpression="StatusId" />
                       <asp:BoundField DataField="StatusDescription" HeaderText="StatusDescription" SortExpression="StatusDescription" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="
select * from balaji.CivilStatus_HR_Batch4 where [StatusId] = @StatusId" UpdateCommand="update balaji.CivilStatus_HR_Batch4 set [StatusDescription]=@StatusDescription where [StatusId]=@StatusId" DeleteCommand="Delete from balaji.CivilStatus_HR_Batch4 where [StatusId]=@StatusId">
                   <DeleteParameters>
                       <asp:Parameter Name="StatusId" />
                   </DeleteParameters>
                   <SelectParameters>
                       <asp:ControlParameter ControlID="DropDownList1" Name="StatusId" PropertyName="SelectedValue" />
                   </SelectParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="StatusDescription" />
                       <asp:Parameter Name="StatusId" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               </asp:Panel>
               

     
               

           </td>
               <td style="width:10%">

           </td>
       </tr>
   </table>
</asp:Content>
