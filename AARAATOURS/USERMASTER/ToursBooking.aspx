<%@ Page Title="Tours Booking" Language="C#" MasterPageFile="~/USERMASTER/umaster.Master" AutoEventWireup="true" CodeBehind="ToursBooking.aspx.cs" Inherits="AARAATOURS.USERMASTER.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <!-- promotions -->
	<section class="wthree-row w3-about py-lg-5">
		<div class="container py-5">
            <div class="title-section pb-sm-5 pb-3">
               <h3 class="heading-agileinfo text-center pb-4">Booking <span> Slot</span></h3>
            </div>

			      <div class="card-deck">

				       <div class="card">
					       <img src="images/g1.jpg" class="img-fluid" alt="Card image cap">
					   <div class="card-body w3ls-card">
					  <h5 class="card-title">Germany</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>South Island </p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Newzealand</p>
						<a href="#" class="btn btn-primary">$280</a>
					  <div>
                          <asp:Button ID="btn_book1" runat="server" Text="Book" OnClick="btn_book1_Click"  />
					  </div>
					</div>
				  </div>

				  <div class="card">
					<img src="images/g2.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">France</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Wonderful Place</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Paris</p>
						<a href="#" class="btn btn-primary">$280</a>
						 <div>
                          <asp:Button ID="Button1" runat="server" Text="Book" OnClick="Button1_Click"  />
					  </div>
					</div>
				  </div>

				   <div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Bora Bora</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Polynesian Island</p>
						<a href="#" class="btn btn-primary">$280</a>
						 <div>
                          <asp:Button ID="Button2" runat="server" Text="Book" OnClick="Button2_Click"  />
					  </div>
					</div>
				  </div>

				<div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Maui</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Hawaiian Island</p>
						<a href="#" class="btn btn-primary">$350</a>
						 <div>
                          <asp:Button ID="Button3" runat="server" Text="Book" OnClick="Button3_Click"  />
					  </div>
					</div>
				  </div>


				<div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Tahiti</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>French polysia</p>
						<a href="#" class="btn btn-primary">$350</a>
						 <div>
                          <asp:Button ID="Button4" runat="server" Text="Book" OnClick="Button4_Click"  />
					  </div>
					</div>
				  </div>

				<div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>phuket</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Thailand</p>
						<a href="#" class="btn btn-primary">$350</a>
						 <div>
                          <asp:Button ID="Button5" runat="server" Text="Book" OnClick="Button5_Click"  />
					  </div>
					</div>
				  </div>

				<div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Tokyo</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Japan</p>
						<a href="#" class="btn btn-primary">$500</a>
						 <div>
                          <asp:Button ID="Button6" runat="server" Text="Book" OnClick="Button6_Click"  />
					  </div>
					</div>
				  </div>

			 <div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Glacier National Park</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>Montana</p>
						<a href="#" class="btn btn-primary">$500</a>
						 <div>
                          <asp:Button ID="Button7" runat="server" Text="Book" OnClick="Button7_Click"  />
					  </div>
					</div>
				  </div>


					<div class="card">
					<img src="images/g3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Australia</h5>
					  <p class="card-text mb-3"><i class="fas fa-map-marker pr-2"></i>Beautiful place</p>
					  <p class="card-text mb-3"><i class="far fa-clock pr-2"></i>London</p>
						<a href="#" class="btn btn-primary">$500</a>
						 <div>
                          <asp:Button ID="Button8" runat="server" Text="Book" OnClick="Button8_Click"  />
					  </div>
					</div>
				  </div>

			</div>
            </div>
        </section>
<!-- //promotions -->






</asp:Content>
