<%@ Page Title="BookingData" Language="C#" MasterPageFile="~/ADMINMASTER/Amaster.Master" AutoEventWireup="true" CodeBehind="Bookingdata.aspx.cs" Inherits="AARAATOURS.ADMINMASTER.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
     <center>
           <asp:GridView ID="BookingGv" runat="server" AllowPaging="True" AutoGenerateColumns="False"  Width="730px" OnPageIndexChanging="BookingGv_PageIndexChanging" OnSelectedIndexChanged="BookingGv_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
           <Columns>
               <asp:TemplateField HeaderText="Booking ID">
                   <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("BookingId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Place Name">
                   <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Place") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Duration ">
                   <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Duration") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Memberplan">
                   <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Memberplan") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="FullName">
                   <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("Fullname") %>'></asp:Label>
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
