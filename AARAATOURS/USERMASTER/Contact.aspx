<%@ Page Title="Contact" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AARAATOURS.USERMASTER.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--/contact-->
	<section class="contact py-lg-5">
		<div class="container py-5">
            <div class="title-section pb-sm-5 pb-3">
               <h2 class="heading-agileinfo text-center pb-4">Contact <span> Us</span></h2>
            </div>
			<div class="inner-sec-w3layouts-agileinfo">
				
				
				<div class="contact_grid_right mt-5">
					<h6>Please fill this form to contact and feedbacks with us.</h6>
					<form action="#" method="post">
						<div class="contact_left_grid">
                            <asp:TextBox ID="txt_name" placeholder="Name" runat="server"></asp:TextBox>
						

							<asp:TextBox ID="txt_email" placeholder="Email" runat="server"></asp:TextBox>
							

							<asp:TextBox ID="txt_msg" placeholder="Message" runat="server" Rows="5" Columns="5"></asp:TextBox>
						
                            <asp:Button ID="btn_contact_submit" runat="server" Text="Submit" OnClick="btn_contact_submit_Click"  />
							
							
							<div class="clearfix"> </div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--//contact-->


</asp:Content>
