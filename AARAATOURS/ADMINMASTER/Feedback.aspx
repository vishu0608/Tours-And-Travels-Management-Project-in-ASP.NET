<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/ADMINMASTER/Amaster.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="AARAATOURS.ADMINMASTER.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <center>
           <asp:GridView ID="FeedbackGV" runat="server" AllowPaging="True" AutoGenerateColumns="False"   Width="730px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="FeedbackGV_PageIndexChanging" OnSelectedIndexChanged="FeedbackGV_SelectedIndexChanged" >
           <Columns>
               <asp:TemplateField HeaderText="Name">
                   <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Email ID">
                   <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Femail") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

                <asp:TemplateField HeaderText="Message">
                   <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("fmsg") %>'></asp:Label>
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
