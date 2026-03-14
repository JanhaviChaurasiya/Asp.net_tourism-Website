<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TourismWebsite.Home" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 </asp:Content>

   <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       
      <!-- HERO SECTION START -->
<div class="hero-section">
    <div class="hero-content">
        <span class="badge">Special Offer</span>
        <h1>Discover Your Next Adventure Awaits</h1>
        <p> Explore breathtaking destinations, unique experiences,
            and unforgettable journeys around the world. </p>
        <div class="hero-buttons">
    <asp:Button ID="btnExplore" runat="server" Text="Explore Destinations" CssClass="btn-primary" PostBackUrl="Destinations.aspx" />
            
            
</div>
    </div>
</div>
<!-- HERO SECTION END -->

        <!-- POPULAR DESTINATIONS START -->
<div class="destinations-section">
    <h2>Explore Dream Destinations</h2>
    <p class="section-subtitle">
        Handpicked destinations for unforgettable travel experiences
    </p>

    <div class="destination-cards">
        <div class="destination-card">
            <img src="Images/Santorini-Greece.jpg" alt="Santorini"/>
            <h3>Santorini, Greece</h3>
            <p>White-washed houses, blue domes, and stunning sunsets.</p>
        </div>

        <div class="destination-card">
            <img src="Images/kyoto.jpg" alt="Kyoto"/>
            <h3>Kyoto, Japan</h3>
            <p>Historic temples, cherry blossoms, and cultural beauty.</p>
        </div>

        <div class="destination-card">
            <img src="Images/paris.jpg" alt="Paris"/>
            <h3>Paris, France</h3>
            <p>The city of love, lights, and timeless elegance.</p>
        </div>

        <div class="destination-card">
            <img src="Images/maldives.jpg" alt="Maldives" />
            <h3>Maldives</h3>
            <p>Paradise islands with crystal-clear waters, luxury  overwater villas,pristine beaches.</p>
        </div>

        
        <div class="view-all">
    <a href="Destinations.aspx" class="view-all-btn">
        View All Destinations
        <span class="arrow">→</span>
    </a>
</div>
    </div>
</div>


<!-- POPULAR DESTINATIONS END -->

    <!-- WHY CHOOSE US START -->
<div class="why-section">
    <h2>Why Choose Us</h2>
    <p class="section-subtitle">
        We make your travel experience safe, easy, and unforgettable
    </p>

    <div class="why-cards">
        <div class="why-card">
            <div class="why-icon">🛡️</div>
            <h3>Safe & Secure</h3>
            <p>Your safety is our top priority throughout your journey.</p>
        </div>

        <div class="why-card">
            <div class="why-icon">💼</div>
            <h3>Handpicked Packages</h3>
            <p>Carefully designed trips to give you the best experiences.</p>
        </div>

        <div class="why-card">
            <div class="why-icon">⏰</div>
            <h3>24/7 Support</h3>
            <p>We are always available to help you anytime, anywhere.</p>
        </div>

        <div class="why-card">
            <div class="why-icon">⭐</div>
            <h3>Trusted by Travelers</h3>
            <p>Thousands of happy travelers around the world trust us.</p>
        </div>
    </div>
</div>
<!-- WHY CHOOSE US END -->

        <!-- CALL TO ACTION START -->
<div class="cta-section">
    <h2>Ready to Start Your Journey?</h2>
    <p>
        Discover amazing destinations and create unforgettable memories with us.
    </p>

    
    <div class="cta-buttons">

    <asp:HyperLink ID="lnkSignup" runat="server" NavigateUrl="Signup.aspx" CssClass="cta-primary">
        Get Started
    </asp:HyperLink>

    <asp:HyperLink  ID="lnkPackages" runat="server" NavigateUrl="Packages.aspx" CssClass="cta-secondary">
        Browse Packages
    </asp:HyperLink>

</div>
</div>
<!-- CALL TO ACTION END -->

  </asp:Content>
       
   
