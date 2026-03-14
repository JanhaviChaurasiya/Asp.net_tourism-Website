<%@ Page Title="Destinations" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Destinations.aspx.cs"
Inherits="TourismWebsite.Destinations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Style.css" rel="stylesheet" />

  

    <!-- DESTINATION HERO -->
<div class="dest-hero">
    <h1>Explore Our Destinations</h1>
    <p>From ancient wonders to tropical paradises, discover extraordinary places.</p>

    <div class="search-box">
        <input type="text" placeholder="Search destinations..." />
    </div>
</div>

    <div class="filter-chips">
    <button class="chip active">All</button>
    <button class="chip">Italy</button>
    <button class="chip">India</button>
    <button class="chip">Greece</button>
    <button class="chip">Japan</button>
</div>


    <!-- DESTINATIONS GRID -->
    <div class="destinations-container">

        <!--Greece-->

        <div class="destination-card">
            <div class="image-wrapper">
            <img src="Images/Santorini-Greece.jpg" alt="Santorini" />
                <div class="rating">⭐ 4.8</div>
                </div>

            <div class="card-content">
                <span class="location">Greece</span>
                <h3>Santorini</h3>
                <p>Stunning sunsets, white architecture and romantic vibes.</p>
         

                <div class="card-footer">
                    <span>5-7 days recommended</span>
                    <asp:HyperLink  runat="server" NavigateUrl="destination-details.aspx?place=Santorini" CssClass="details-link">
                     View Details →
                   </asp:HyperLink>
                    </div>
            </div>
        </div>

        <!--France-->

        <div class="destination-card">
            <div class="image-wrapper">
            <img src="Images/paris.jpg" alt="Paris" />
             <div class="rating">⭐ 5.8</div>
                </div>

            <div class="card-content">
                 <span class="location">France</span>
                <h3>Paris</h3>
                <p>The city of love, art, and timeless elegance.</p>
              
                <div class="card-footer">
            <span>5-7 days recommended</span>
            <asp:HyperLink  runat="server" NavigateUrl="destination-details.aspx?place=Paris" CssClass="details-link">
             View Details →
            </asp:HyperLink>
        </div>
    </div>
           </div>

        <!--Japan-->

        <div class="destination-card">
            <div class="image-wrapper">
            <img src="Images/kyoto.jpg" alt="Kyoto" />
                <div class="rating">⭐ 4.8</div>
                </div>

            <div class="card-content">
                 <span class="location">Japan</span>
                  <h3>kyoto</h3>
                <p>Historic temples, cherry blossoms, and culture.</p>
                
                 <div class="card-footer">
            <span>5-7 days recommended</span>
            <asp:HyperLink runat="server" NavigateUrl="destination-details.aspx?place=Kyoto" CssClass="details-link">
             View Details →
            </asp:HyperLink>
        </div>
            </div>
        </div>
        
        <!--Maldives-->

        <div class="destination-card">
            <div class="image-wrapper">
            <img src="Images/maldives.jpg" alt="Maldives" />
                <div class="rating">⭐ 4.8</div>
            </div>

            <div class="card-content">
                 <span class="location">Maldives</span>
                <h3>Maldives</h3>
                <p>Crystal clear waters and luxury island stays.</p>

                <div class="card-footer">
            <span>5-7 days recommended</span>
            <asp:HyperLink runat="server" NavigateUrl="destination-details.aspx?place=Maldives" CssClass="details-link">
             View Details →
            </asp:HyperLink>
        </div>
            </div>
        </div>

        <!--Dubai-->

        <div class="destination-card">
             <div class="image-wrapper">
        <img src="Images/dubai.jpg" alt="Dubai" />
         <div class="rating">⭐ 4.8</div>
         </div> 
        <div class="card-content">
            <span class="location">Dubai</span>
            <h3>Dubai</h3>
            <p>Luxury skyline and desert adventures.</p>
            
            <div class="card-footer">
            <span>5-7 days recommended</span>
            <asp:HyperLink  runat="server" NavigateUrl="destination-details.aspx?place=Dubai"  CssClass="details-link">
            View Details →
            </asp:HyperLink>
        </div>
        </div>
    </div>

        <!--switzerland-->

    <div class="destination-card">
        <div class="image-wrapper">
        <img src="Images/switzerland.jpg" alt="Switzerland" />
             <div class="rating">⭐ 4.8</div>
    </div>

        <div class="card-content">
             <span class="location">Italy</span>
            <h3>Switzerland</h3>
            <p>Snow mountains and scenic train journeys.</p>
           
            <div class="card-footer">
            <span>5-7 days recommended</span>
           <asp:HyperLink 
    runat="server"
    NavigateUrl="destination-details.aspx?place=Switzerland"
    CssClass="details-link">
    View Details →
</asp:HyperLink>
        </div>
        </div>
    </div>

        <!--london-->

    <div class="destination-card">
         <div class="image-wrapper">
        <img src="Images/london.jpg" alt="London" />
             <div class="rating">⭐ 4.8</div>
    </div>

        <div class="card-content">
             <span class="location">london</span>
            <h3>London</h3>
            <p>Historic landmarks and vibrant city life.</p>
            
            <div class="card-footer">
            <span>5-7 days recommended</span>
          <asp:HyperLink 
    runat="server"
    NavigateUrl="destination-details.aspx?place=london"
    CssClass="details-link">
    View Details →
</asp:HyperLink>

        </div>
        </div>
    </div>

        <!--New york-->

    <div class="destination-card">
         <div class="image-wrapper">
        <img src="Images/NewYork.jpg" alt="New York" />
             <div class="rating">⭐ 4.8</div>
    </div>

        <div class="card-content">
            <span class="location">New York</span>
            <h3>New York</h3>
            <p>The city that never sleeps.</p>
            
             <div class="card-footer">
            <span>5-7 days recommended</span>
           <asp:HyperLink 
    runat="server"
    NavigateUrl="destination-details.aspx?place=New York"
    CssClass="details-link">
    View Details →
</asp:HyperLink>
        </div>
        </div>
    </div>

        <!-- Italy -->
<div class="destination-card">
    <div class="image-wrapper">
    <img src="Images/rome.jpg" alt="Italy" />
        <div class="rating">⭐ 4.8</div>
    </div>

    <div class="card-content">
        <span class="location">Italy</span>
        <h3>Rome</h3>
        <p>Historic cities, Roman architecture, and stunning coastal beauty.</p>
        
        <div class="card-footer">
            <span>5-7 days recommended</span>
            <asp:HyperLink 
    runat="server"
    NavigateUrl="destination-details.aspx?place=Rome"
    CssClass="details-link">
    View Details →
</asp:HyperLink>
        </div>
    </div>
</div>

<!-- Manali -->
<div class="destination-card">
    <div class="image-wrapper">
    <img src="Images/manali.jpg" alt="Manali" />
    <div class="rating">⭐ 4.8</div>
    </div>

    <div class="card-content">
        <span class="location">India</span>
        <h3>Manali</h3>
        <p>Snow-capped mountains, adventure sports, and scenic valleys.</p>
       
         <div class="card-footer">
            <span>5-7 days recommended</span>
            <asp:HyperLink 
    runat="server"
    NavigateUrl="destination-details.aspx?place=Manali"
    CssClass="details-link">
    View Details →
</asp:HyperLink>
        </div>
    </div>
</div>

<!-- Andaman & Nicobar -->
<div class="destination-card">
    <div class="image-wrapper">
    <img src="Images/andaman.jpg" alt="Andaman & Nicobar Islands" />
         <div class="rating">⭐ 4.8</div>
    </div>

    <div class="card-content">
        <span class="location">Andaman & Nicobar Island</span>
        <h3>Andaman & Nicobar</h3>
        <p>Crystal-clear waters, coral reefs, and peaceful island life.</p>
        
        <div class="card-footer">
            <span>5-7 days recommended</span>
          <asp:HyperLink 
    runat="server"
    NavigateUrl="destination-details.aspx?place=Andaman"
    CssClass="details-link">
    View Details →
</asp:HyperLink>
        </div>
    </div>
</div>
        
    </div>

</asp:Content>






