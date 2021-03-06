﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HRClerkMaster.Master" AutoEventWireup="true" CodeBehind="CategoriesSearch.aspx.cs" Inherits="HR_PresentationLayer_ASP.NET.CategoriesSearch" %>
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
                           <asp:Label runat="server">Search Category: </asp:Label> 
               
                       </td>
                        <td style="width: auto">
                            <asp:DropDownList ID="DropDownList1" CssClass="browser-default" Width="200px" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="CategoryID" DataValueField="CategoryID" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select * from balaji.Category_HR_Batch4"></asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:Button ID="Btn" OnClick="Btn_Click" CssClass="waves-effect waves-light btn" runat="server" Text="Refresh" style="left: 0px; top: 0px"  />
                       </td>
                       <td>
                          <asp:HyperLink ID="btnAddNew" runat="server" CssClass="waves-effect waves-light btn" Text="Add New" NavigateUrl="~/CategoriesControl.aspx" ></asp:HyperLink>
                       </td>
                   </tr>
               </table>
               <br />
               <asp:Panel ID="Panel1" runat="server">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="CategoryID" DataSourceID="SqlDataSource2">
                       <Columns>
                           <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                           <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                           <asp:BoundField DataField="CategoryDescription" HeaderText="CategoryDescription" SortExpression="CategoryDescription" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select * from balaji.Category_HR_Batch4"
                       UpdateCommand="update balaji.Category_HR_Batch4 set [CategoryName]=@CategoryName, [CategoryDescription]=@CategoryDescription where [CategoryID]=@CategoryID"
                       DeleteCommand="delete from balaji.Category_HR_Batch4 where [CategoryID]=@CategoryID"
                       ></asp:SqlDataSource>
               </asp:Panel>
               <asp:Panel ID="Panel2" runat="server">
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="CategoryID" DataSourceID="SqlDataSource3">
                       <Columns>
                           <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
                           <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                           <asp:BoundField DataField="CategoryDescription" HeaderText="CategoryDescription" SortExpression="CategoryDescription" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="select * from balaji.Category_HR_Batch4 where [CategoryID] = @CategoryID "
                         UpdateCommand="update balaji.Category_HR_Batch4 set [CategoryName]=@CategoryName, [CategoryDescription]=@CategoryDescription where [CategoryID]=@CategoryID"
                       DeleteCommand="delete from balaji.Category_HR_Batch4 where [CategoryID]=@CategoryID"
                       >
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList1" Name="CategoryID" PropertyName="SelectedValue" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               </asp:Panel>
               

     
               

           </td>
               <td style="width:10%">

           </td>
       </tr>
   </table>
</asp:Content>
