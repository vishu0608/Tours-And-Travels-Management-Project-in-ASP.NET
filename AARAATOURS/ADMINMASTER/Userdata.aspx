<%@ Page Title="UsersData" Language="C#" MasterPageFile="~/ADMINMASTER/Amaster.Master" AutoEventWireup="true" CodeBehind="Userdata.aspx.cs" Inherits="AARAATOURS.ADMINMASTER.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <center>
           <asp:GridView ID="UserGV" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="UserGV_PageIndexChanging" OnSelectedIndexChanged="UserGV_SelectedIndexChanged" OnSelectedIndexChanging="UserGV_SelectedIndexChanging" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="730px"  >
           <Columns>
               <asp:TemplateField HeaderText="ID">
                   <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("UserID") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Name">
                   <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Mobile No">
                   <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Email ID">
                   <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Password">
                   <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("password") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
           
               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#330099" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
           
           </asp:GridView>
    </center>



</asp:Content>
