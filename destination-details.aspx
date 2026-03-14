<%@ Page Title="Destination Details" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="destination-details.aspx.cs"
Inherits="TourismWebsite.destination_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


  <section class="details-hero">
     
  <asp:Image ID="imgDestination" runat="server" CssClass="hero-img" />

<div class="hero-content">
   
    <p class="back-link">
    <a href="Destinations.aspx">← Back to Destinations</a>
</p>


    <p class="location">
        📍 <asp:Label ID="lblLocation" runat="server"></asp:Label>
    </p>

    <h1>
        <asp:Label ID="lblTitle" runat="server"></asp:Label>
    </h1>

    <div class="meta">
        ⭐ <asp:Label ID="lblRating" runat="server"></asp:Label>
        &nbsp; ⏱ <asp:Label ID="lblDuration" runat="server"></asp:Label>
        &nbsp; 💲 <asp:Label ID="lblCost" runat="server"></asp:Label>
    </div>
</div>

    
</section>

            <section class="about">
   <h2>
    About <asp:Label ID="lblAboutTitle" runat="server"></asp:Label>
</h2>

<p>
    <asp:Label ID="lblDescription" runat="server"></asp:Label>
</p>
</section>

            <section class="details-grid">

    <div class="left-content">
        <div class="info-box">
          <h3>History & Culture</h3><p>
    <asp:Label ID="lblHistory" runat="server"></asp:Label>

        </div>

        <div class="info-box">
            <h3>What to Wear</h3>
            <ul>
    <asp:Literal ID="litWear" runat="server"></asp:Literal>
</ul>
        </div>

        <div class="info-box">
            <h3>Must Visit Places</h3>
            <ul>
    <asp:Literal ID="litPlaces" runat="server"></asp:Literal>
</ul>
        </div>
    </div>

    <div class="sidebar">
        <div class="trip-card">
            <h3>Plan Your Trip</h3>
           <p><strong>Best Time:</strong> <asp:Label ID="lblBestTime" runat="server"></asp:Label></p>
            <p><strong>Duration:</strong> 5-7 days</p>
            <p><strong>Avg Cost:</strong> $150-300/day</p>

            <button class="package-btn">View Packages →</button>
        </div>

        <div class="quick-facts">
            <h3>Quick Facts</h3>
            <asp:Literal ID="litFacts" runat="server"></asp:Literal>
        </div>
    </div>

</section>
        
    

</asp:Content>