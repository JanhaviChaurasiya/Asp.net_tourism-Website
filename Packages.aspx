<%@ Page Title="Packages" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Packages.aspx.cs"
    Inherits="TourismWebsite.Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="packages-page-wrapper">

<link href="Content/Style.css" rel="stylesheet" />


<section class="packages-section">

    <h1 class="packages-title">Travel Packages</h1>
    <p class="packages-subtitle">
        All-inclusive packages designed for hassle-free travel.
    </p>

    <asp:Repeater ID="rptPackages" runat="server">
        <ItemTemplate>

            <div class="package-wrapper">

                <!-- LEFT PANEL -->
                <div class="package-left"
                     style='background-image: url("<%# Eval("ImageUrl") %>");'>

                    <span class="badge">Best Seller</span>

                    <div class="left-content">
                        <h2><%# Eval("Title") %></h2>
                        <p class="location">📍 <%# Eval("Location") %></p>
                    </div>

                </div>

                <!-- RIGHT PANEL -->
                <div class="package-right">

                    <div class="top-info">
                        <span>⭐ 4.9 (342 reviews)</span>
                        <span>⏱ <%# Eval("Duration") %></span>
                    </div>

                    <p class="description">
                        <%# Eval("Description") %>
                    </p>

                    <div class="details-row">

                        <div>
                            <h4>Highlights</h4>
                            <ul>
                                <li>Guided sightseeing tours</li>
                                <li>Luxury accommodations</li>
                                <li>Local cultural experiences</li>
                            </ul>
                        </div>

                        <div>
                            <h4>What's Included</h4>
                            <ul>
                                <li>Round-trip flights</li>
                                <li>Hotel stay</li>
                                <li>Breakfast included</li>
                            </ul>
                        </div>

                    </div>

                    <div class="bottom-row">

                        <div class="price">
                            ₹ <%# Eval("Price") %>
                            <span>per person</span>
                        </div>

                       <asp:HyperLink 
                        ID="btnBook" 
                        runat="server" 
                        NavigateUrl="~/Contact.aspx" 
                        CssClass="book-btn">
                        Book Now →
                       </asp:HyperLink>
   
                    </div>

                </div>

            </div>

        </ItemTemplate>
    </asp:Repeater>

</section>
    </div>

</asp:Content>