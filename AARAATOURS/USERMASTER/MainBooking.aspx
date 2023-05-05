<%@ Page Title="Booking" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="MainBooking.aspx.cs" Inherits="AARAATOURS.USERMASTER.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!--Booking-->
	<center>
		 <table style="width: 448px; height: 440px; background-color: #FF9933; font-size: large; font-weight: bold;">
            <th colspan="2" align="center"><img src="images/bookingnow.PNG" id="" width="100px" style="height: 40px"/> </th>
            
			 <tr>
                <td align="center">Booking ID</td>
                <td align="center"><asp:Label ID="lbl_book_id" runat="server" Text="ID"></asp:Label>
					<%--<asp:TextBox ID="txt_booking_id" runat="server"></asp:TextBox>--%>
                </td>
            </tr>

            <tr>
                <td align="center">Select Place</td>
                <td align="center"><asp:DropDownList ID="DropDownList_select_space" runat="server">
									<asp:ListItem>South Island : Newzealand</asp:ListItem>
									<asp:ListItem>Wonderful Place : Paris</asp:ListItem>
									<asp:ListItem>Bora Bora : Polynesian Island</asp:ListItem>
									<asp:ListItem>Maui : Hawaiian Island</asp:ListItem>
									<asp:ListItem>Tahiti : French polysia</asp:ListItem>
									<asp:ListItem>Phuket : Thailand</asp:ListItem>
									<asp:ListItem>Tokyo : Japan</asp:ListItem>
									<asp:ListItem>Glacier National Park : Montana</asp:ListItem>
									<asp:ListItem>Beautiful place : London</asp:ListItem>
                                   </asp:DropDownList>
                     
                </td>
            </tr>

            <tr>
                <td align="center">Duration</td>
                <td align="center"><asp:DropDownList ID="DropDownList_Duration" runat="server">
									<asp:ListItem>3 Day 2 Nights</asp:ListItem>
									<asp:ListItem>5 Day 4 Nights</asp:ListItem>
                                   </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td align="center">Member</td>
				<td align="center"><asp:RadioButtonList ID="RadioButtonList_member" runat="server">
												<asp:ListItem>Slot 1: 1 to 05 Member </asp:ListItem>
												<asp:ListItem>Slot 2: 1 to 10 Member</asp:ListItem>
                                              </asp:RadioButtonList>
                
                </td>
            </tr>

            <tr>
                <td align="center">Full Name</td>
                <td align="center"><asp:TextBox ID="txt_Fullname" runat="server" placeholder="Your Full Name"></asp:TextBox>
                     

                </td>
            </tr>

            <tr>
                <td colspan="2" align="center"><asp:Button ID="btn_Booling_submit" runat="server" Text="Submit" BackColor="#669900" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="btn_Booling_submit_Click"  ></asp:Button>
					&nbsp&nbsp&nbsp&nbsp<asp:LinkButton ID="LinkButton_signout" runat="server" Font-Size="X-Small" Font-Underline="True" OnClick="LinkButton_signout_Click" >Logout</asp:LinkButton>
                  
                </td>
            </tr>
        </table>
	</center>
	<!--End booking-->



 	<!-- promotions -->
	<section class="wthree-row w3-about py-lg-5">
		<div class="container py-5">
            <div class="title-section pb-sm-5 pb-3">
               <h3 class="heading-agileinfo text-center pb-4">Booking <span> Slot</span></h3>
            </div>

			      <div class="card-deck">

				       <div class="card">
					       <img src="images/southisland_newzealand.jpg" class="img-fluid" alt="Card image cap">
					   <div class="card-body w3ls-card">
					  <h5 class="card-title">New Zealand</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>South Island </p>
					  <%--<p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Beautyful Place</p>--%>
						<a href="#" class="btn btn-primary">$280 To $500</a>
					</div>
				  </div>

				  <div class="card">
					<img src="images/g2.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">French</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Capital Paris</p>
					 <%-- <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Paris</p>--%>
						<a href="#" class="btn btn-primary">$280 To $500</a>
					</div>
				  </div>

				   <div class="card">
					<img src="images/bora_bora_french.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">French</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Bora Bora Polynesian</p>
					 <%-- <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Polynesian </p>--%>
						<a href="#" class="btn btn-primary">$280 To $500</a>
					</div>
				  </div> <br />

				<div class="card">
					<img src="images/Mahu_hawaiian.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">USA</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Maui Hawaiian</p>
					<%--  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Hawaiian Island</p>--%>
						<a href="#" class="btn btn-primary">$350 To $600</a>
					</div>
				  </div>


				<div class="card">
					<img src="images/tahiti.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">French</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Tahiti polysia</p>
					 <%-- <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>French polysia</p>--%>
						<a href="#" class="btn btn-primary">$350 To $600</a>
					</div>
				  </div>

				<div class="card">
					<img src="images/london.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">England</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Londown City</p>
					  <%--<p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Thailand</p>--%>
						<a href="#" class="btn btn-primary">$350 To $600</a>
					</div>
				  </div><br />

				<div class="card">
					<img src="images/rome_italy.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Italy</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Rome City</p>
					 <%-- <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Japan</p>--%>
						<a href="#" class="btn btn-primary">$500 TO $900</a>
					</div>
				  </div>

			 <div class="card">
					<img src="images/phuket_thailand.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Thailand</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Phuket Park</p>
					<%--  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Montana</p>--%>
						<a href="#" class="btn btn-primary">$500 To $900</a>
					</div>
				  </div>


					<div class="card">
					<img src="images/tokyo_japan.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Japan</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Tokyo City</p>
					 
						<a href="#" class="btn btn-primary">$500 To $900</a>
					</div>
				  </div>

					  <div class="card">
					<img src="images/Glacier_us.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">USA</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Glacier NPark</p>
					 
						<a href="#" class="btn btn-primary">$500 To $900</a>
					</div>
				  </div>

			</div>
            </div>
        </section>
<!-- //promotions -->


</asp:Content>
