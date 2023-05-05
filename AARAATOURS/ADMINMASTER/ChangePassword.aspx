<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/ADMINMASTER/Amaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="AARAATOURS.ADMINMASTER.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <center>

         <table style="width: 433px; height: 370px; background-color: #FF6600; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><img src="images/changepass.PNG" id="" width="100px" style="height: 40px" align="center"/> </th>
            

            <tr>
                <td align="center">Mobile</td>
                <td align="center"><asp:TextBox ID="txt_Achangepass_mobile" runat="server" placeholder=" Enter Mobile No"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validusername" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

             <tr>
                <td align="center">Email</td>
                <td align="center"><asp:TextBox ID="txt_Achangepass_email" runat="server" placeholder=" Enter Email Id"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="validusername" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td style="height: 72px" align="center"> Old Password</td>
                <td style="height: 72px" align="center"><asp:TextBox ID="txt_Achnagepass_oldpass" runat="server" TextMode="Password" placeholder="Enter Old Password"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

             <tr>
                <td style="height: 72px" align="center"> New Password</td>
                <td style="height: 72px" align="center"><asp:TextBox ID="txt_Achangepass_newpass" runat="server" TextMode="Password" placeholder="Enter Old Password"></asp:TextBox>
                     <%--<asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_AAChange_pass" runat="server" Text="Change Password" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btn_AAChange_pass_Click"  ></asp:Button>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:LinkButton ID="LinkButton_AAlogin_cpass" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton_AAlogin_cpass_Click"   >Login</asp:LinkButton>
                </td>
            </tr>
        </table>

    </center>


</asp:Content>
