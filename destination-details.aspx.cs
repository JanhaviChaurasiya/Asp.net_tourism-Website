using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TourismWebsite
{
    public partial class destination_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    string place = Request.QueryString["place"];

                    if (string.IsNullOrEmpty(place))
                    {
                        lblTitle.Text = "Destination Not Found";
                        return;
                    }

                    switch (place)
                    {
                        case "Santorini":
                            LoadSantorini();
                            break;
                        case "Paris":
                            LoadParis();
                            break;
                        case "Kyoto":
                            LoadKyoto();
                            break;
                        case "Maldives":
                            LoadMaldives();
                            break;
                        case "Dubai":
                            LoadDubai();
                            break;
                        case "Switzerland":
                            LoadSwitzerland();
                            break;
                        case "London":
                            LoadLondon();
                            break;
                        case "NewYork":
                            LoadNewYork();
                            break;
                        case "Rome":
                            LoadRome();
                            break;
                        case "Manali":
                            LoadManali();
                            break;
                        case "Andaman":
                            LoadAndaman();
                            break;
                        default:
                            lblTitle.Text = "Destination Not Found";
                            break;
                    }
                }
            }

            private void LoadSantorini()
            {
                imgDestination.ImageUrl = "Images/Santorini-Greece.jpg";
                lblTitle.Text = "Santorini, Greece";
                lblLocation.Text = "Santorini, Greece";
                lblRating.Text = "4.9 (2847 reviews)";
                lblDuration.Text = "5-7 days";
                lblCost.Text = "$150-300/day";
                lblAboutTitle.Text = "Santorini";
                lblDescription.Text = "Santorini is a stunning volcanic island in the Cyclades group of the Greek islands. It's famous for its dramatic views, stunning sunsets, white-washed buildings with blue domes, and its very own active volcano. The island offers a unique blend of natural beauty, ancient history, and modern luxury.";
                lblHistory.Text = "Santorini's history dates back to 3000 BC when it was home to the Minoan civilization. Around 1600 BC, a massive volcanic eruption destroyed the island, creating its famous caldera and possibly inspiring the legend of Atlantis. The island has been inhabited by Greeks, Romans, Byzantines, and Venetians, each leaving their mark on its culture and architecture.";
                litWear.Text = "<li>Light breathable cotton clothes</li><li>Comfortable walking shoes for cobblestone streets</li><li>Swimwear for beach vistis</li><li>Light Cardigan for evening breezes</li><li>Sun hats and sunglasses</li><li>Modest attire for visiting churches</li>";
                litPlaces.Text = "<li>Oia Village-famous for spectacular sunsets</li><li>Red Beach-Unique volcanic sand beach</li><li>Fira Town-The vibrant capital with shops and restaurants</li><li>Ancient Akrotiri - Preserved Minoan settlement</li><li>Nea Kameni - Active volcanic crater</li><li>Amoudi Bay - Charming fishing port</li>";
                lblBestTime.Text = "April to October";
                litFacts.Text = "<span class='tag'>UNESCO Site</span><span class='tag'>Beach</span><span class='tag'>Romantic</span>";
            }

            private void LoadParis()
            {
                imgDestination.ImageUrl = "Images/paris.jpg";
                lblTitle.Text = "Paris, France";
                lblLocation.Text = "Paris, France";
                lblRating.Text = "4.8 (3200 reviews)";
                lblDuration.Text = "3-5 days";
                lblCost.Text = "$200-400/day";
                lblAboutTitle.Text = "Paris";
                lblDescription.Text = "Paris, the capital of France, is known as the \"City of Light\" and one of the most romantic destinations in the world. It is famous for its iconic landmarks, world-class museums, charming cafés, and rich artistic heritage.";
                lblHistory.Text = "Paris has a history dating back over 2,000 years. It played a major role in the French Revolution and has long been a center of art, fashion, philosophy, and gastronomy. The city is home to masterpieces in the Louvre and architectural wonders like Notre-Dame Cathedral.";
                litWear.Text = "<li>Light jackets during spring and autumn</li><li>Comfortable walking shoes</li><li>Smart casual outfits for restaurants</li><li>Layered clothing for unpredictable weather</li><li>Stylish yet simple attire</li>";
                litPlaces.Text = "<li>Eiffel Tower-Iconic symbol of France</li><li>Louvre Museum-Home of the Mona Lisa</li><li>Notre-Dame Cathedral-Gothic masterpiece</li><li>Montmartre – Artistic hilltop district</li><li>Seine River Cruise – Scenic city views</li>";
                lblBestTime.Text = "April to June & September";
                litFacts.Text = "<span class='tag'>Romantic</span><span class='tag'>Historic</span><span class='tag'>Art</span>";
            }

            private void LoadKyoto()
            {
                imgDestination.ImageUrl = "Images/kyoto.jpg";
                lblTitle.Text = "Kyoto, Japan";
                lblLocation.Text = "Kyoto, Japan";
                lblRating.Text = "4.7 (2100 reviews)";
                lblDuration.Text = "3-4 days";
                lblCost.Text = "$150-250/day";
                lblAboutTitle.Text = "Kyoto";
                lblDescription.Text = "Tokyo is Japan’s bustling capital blending ultra-modern skyscrapers with traditional temples. It is known for advanced technology, pop culture, and delicious cuisine.";
                lblHistory.Text = "Originally a small fishing village named Edo, Tokyo became the capital in 1868. The city reflects Japan’s deep traditions alongside cutting-edge innovation.";
                litWear.Text = "<li>Comfortable walking shoes</li><li>Seasonal clothing (cold winters, humid summers)</li><li>Light layers for spring</li><li>Casual street-style outfits</li><li>Warm coats in winter.";
                litPlaces.Text = "<li>Fushimi Inari Shrine</li><li>Kinkaku-ji Temple</li><li>Arashiyama Bamboo Forest</li><li>World’s busiest intersection</li><li>Senso-ji Temple – Historic Buddhist temple</li><li>Tokyo Skytree – Panoramic city views</li><li>Akihabara – Anime & tech district</li><li>Meiji Shrine – Peaceful forest shrine.</li>";
                lblBestTime.Text = "March to May";
                litFacts.Text = "<span class='tag'>Temples</span><span class='tag'>Culture</span><span class='tag'>Cherry Blossoms</span>";
            }

            private void LoadMaldives()
            {
                imgDestination.ImageUrl = "Images/maldives.jpg";
                lblTitle.Text = "Maldives";
                lblLocation.Text = "Indian Ocean";
                lblRating.Text = "4.9 (3500 reviews)";
                lblDuration.Text = "4-7 days";
                lblCost.Text = "$300-600/day";
                lblAboutTitle.Text = "Maldives";
                lblDescription.Text = "The Maldives is a tropical paradise located in the Indian Ocean, known for its crystal-clear turquoise waters, white sandy beaches, and luxurious overwater villas. It consists of over 1,000 coral islands grouped into 26 atolls. The Maldives is famous for its peaceful atmosphere, vibrant marine life, and world-class diving experiences.";
                lblHistory.Text = "The Maldives has a rich history influenced by South Asian, Arab, and African traders. It became an important trading hub in the Indian Ocean centuries ago. Islam became the official religion in the 12th century, and it remains deeply rooted in Maldivian culture. Traditional music like Boduberu and local craftsmanship reflect the island’s heritage.";
                litWear.Text = "<li>Swimwear</li><li>Light cotton summer clothes</li><li>Swimwear for beaches and water activities</li><li>Flip-flops or sandals</li><li>Sunglasses and wide-brim hats</li><li>Light cover-ups for sun protection</li><li>Modest attire when visiting local islands</li>";
                litPlaces.Text = "<li>Male – The colorful capital city</li><li>Maafushi Island – Popular local island for tourists</li><li>Banana Reef – Famous diving site</li><li>Vaadhoo Island – Glowing bioluminescent beach</li><li>Ari Atoll – Known for whale shark spotting</li><li>Sun Island – Luxury beach resort destination</li>";
                lblBestTime.Text = "November to April";
                litFacts.Text = "<span class='tag'>Luxury</span><span class='tag'>Island</span><span class='tag'>Snorkeling</span>";
            }

            private void LoadDubai()
            {
                imgDestination.ImageUrl = "Images/dubai.jpg";
                lblTitle.Text = "Dubai, UAE";
                lblLocation.Text = "Dubai, UAE";
                lblRating.Text = "4.6 (2900 reviews)";
                lblDuration.Text = "3-5 days";
                lblCost.Text = "$250-500/day";
                lblAboutTitle.Text = "Dubai";
                lblDescription.Text = "Modern skyline, desert safari and luxury lifestyle.Dubai is a modern city in the United Arab Emirates known for luxury shopping, ultramodern architecture, and desert adventures.";
                lblHistory.Text = "Once a small fishing and pearl-diving village, Dubai transformed into a global business hub after the discovery of oil. It blends traditional Emirati culture with futuristic development.";
                litWear.Text = "<li>Light breathable clothing</li><li>Sunglasses and sun protection</li><li>Modest wear for public places</li><li>Comfortable footwear</li><li>Light shawl for malls or mosques</li>";
                litPlaces.Text = "<li>Burj Khalifa-Tallest building in the world</li><li>Desert Safari-Adventure experience</li><li>Palm Jumeirah-Artificial island</li><li>Dubai Mall – Luxury shopping.</li>";
                lblBestTime.Text = "November to March";
                litFacts.Text = "<span class='tag'>Luxury</span><span class='tag'>Desert</span><span class='tag'>Modern</span>";
            }

            private void LoadSwitzerland()
            {
                imgDestination.ImageUrl = "Images/switzerland.jpg";
                lblTitle.Text = "Switzerland";
                lblLocation.Text = "Europe";
                lblRating.Text = "4.8 (2600 reviews)";
                lblDuration.Text = "5-7 days";
                lblCost.Text = "$250-450/day";
                lblAboutTitle.Text = "Switzerland";
                lblDescription.Text = "Switzerland is known for its breathtaking alpine landscapes, crystal-clear lakes, and charming villages. It is perfect for nature lovers and adventure seekers.";
                lblHistory.Text = "Switzerland has a long history of neutrality and is famous for banking, watches, and chocolates. It consists of multiple cultural regions influenced by Germany, France, and Italy.";
                litWear.Text = "<li>Warm jackets even in summer</li><li>Hiking boots</li><li>Layered clothing</li><li>Gloves and scarves in winter</li><li>Comfortable travel wear</li>";
                litPlaces.Text = "<li>Matterhorn – Iconic mountain peak</li><li>Lake Geneva – Scenic waterfront</li><li>Interlaken – Adventure sports hub</li><li>Jungfraujoch – Top of Europe</li><li>Lucerne – Historic old town</li>";
                lblBestTime.Text = "June to September";
                litFacts.Text = "<span class='tag'>Mountains</span><span class='tag'>Snow</span><span class='tag'>Scenic</span>";
            }

            private void LoadLondon()
            {
                imgDestination.ImageUrl = "Images/london.jpg";
                lblTitle.Text = "London, UK";
                lblLocation.Text = "London, United Kingdom";
                lblRating.Text = "4.7 (2800 reviews)";
                lblDuration.Text = "3-5 days";
                lblCost.Text = "$200-350/day";
                lblAboutTitle.Text = "London";
                lblDescription.Text = "London, the capital of England, is a vibrant global city known for its royal heritage, iconic landmarks, and diverse culture. It perfectly blends historic architecture with modern skyscrapers and offers world-class shopping, theatre, museums, and cuisine.";
                lblHistory.Text = "London’s history dates back nearly 2,000 years to Roman times when it was known as Londinium. It has been the heart of the British monarchy and played a major role in global trade and politics. The city reflects a mix of tradition and modern multicultural influence, making it one of the most dynamic cities in the world.";
                litWear.Text = "<li>Layered clothing (weather changes frequently)</li><li>Comfortable walking shoes</li><li>Light jacket or coat</li><li>Umbrella or raincoat</li><li>Smart casual outfits for restaurants and theatre</li><li>Warm clothing during winter.</li>";
                litPlaces.Text = "<li>Big Ben – Iconic clock tower</li><li>Buckingham Palace – Official royal residence</li><li>Tower Bridge – Historic bascule bridge.</li><li>London Eye – Giant observation wheel</li><li>British Museum – World-famous museum.</li><li>Hyde Park – Beautiful green space.</li>";
                lblBestTime.Text = "May to September";
                litFacts.Text = "<span class='tag'>Royal</span><span class='tag'>Historic</span><span class='tag'>Urban</span>";
            }

            private void LoadNewYork()
            {
                imgDestination.ImageUrl = "Images/NewYork.jpg";
                lblTitle.Text = "New York, USA";
                lblLocation.Text = "New York, USA";
                lblRating.Text = "4.8 (4000 reviews)";
                lblDuration.Text = "4-6 days";
                lblCost.Text = "$250-450/day";
                lblAboutTitle.Text = "New York";
                lblDescription.Text = "The city that never sleeps.New York City, often called “The Big Apple,” is one of the most energetic and influential cities in the world. Known for its towering skyscrapers, vibrant nightlife, Broadway shows, and cultural diversity, NYC is a city that never sleeps.";
                lblHistory.Text = "Founded by the Dutch in 1624 as New Amsterdam, New York became a major immigration gateway through Ellis Island. It has grown into a global financial, cultural, and media capital. The city represents ambition, diversity, and opportunity.";
                litWear.Text = "<li>Seasonal clothing (hot summers, cold winters)</li><li>Comfortable sneakers for walking</li><li>Layered outfits</li><li>Warm coats and boots in winter.</li><li>Casual city-style clothing</li><li>Sunglasses in summer.</li>\";";
                litPlaces.Text = "<li>Statue of Liberty – Symbol of freedom</li><li>Times Square – Bright city lights</li><li>Central Park – Urban green oasis</li><li>Empire State Building – Famous skyscraper</li><li>Brooklyn Bridge – Scenic city views</li><li>Broadway – World-class theatre shows.</li>";
                lblBestTime.Text = "April to June";
                litFacts.Text = "<span class='tag'>Skyscrapers</span><span class='tag'>Urban</span><span class='tag'>Entertainment</span>";
            }

            private void LoadRome()
            {
                imgDestination.ImageUrl = "Images/rome.jpg";
                lblTitle.Text = "Rome, Italy";
                lblLocation.Text = "Rome, Italy";
                lblRating.Text = "4.7 (2900 reviews)";
                lblDuration.Text = "3-5 days";
                lblCost.Text = "$180-320/day";
                lblAboutTitle.Text = "Rome";
                lblDescription.Text = "Rome, the capital of Italy, is a city where ancient history meets modern life. Known as the \"Eternal City,\" it offers historic ruins, Renaissance art, and vibrant street culture..";
                lblHistory.Text = "Founded in 753 BC, Rome was once the center of the Roman Empire. It houses the Vatican City, the heart of Catholicism. Ancient ruins like the Colosseum and Roman Forum tell the story of a powerful civilization.";
                litWear.Text = "<li>Light cotton clothes in summer</li><li>Comfortable walking sandals or shoes</li><li>Sunglasses and hats.</li><li>Modest attire for churches</li><li>Light jacket for evenings</li>";
                litPlaces.Text = "<li>Colosseum-Ancient Roman arena</li><li>Vatican City-St. Peter’s Basilica & Sistine Chapel</li><li>Trevi Fountain-Famous coin-throwing spot</li><li>Pantheon – Well-preserved Roman temple</li><li>Roman Forum – Historic ruins</li>";
                lblBestTime.Text = "April to June";
                litFacts.Text = "<span class='tag'>Historic</span><span class='tag'>Architecture</span><span class='tag'>Culture</span>";
            }

            private void LoadManali()
            {
                imgDestination.ImageUrl = "Images/manali.jpg";
                lblTitle.Text = "Manali, India";
                lblLocation.Text = "Himachal Pradesh, India";
                lblRating.Text = "4.6 (1800 reviews)";
                lblDuration.Text = "3-4 days";
                lblCost.Text = "$80-150/day";
                lblAboutTitle.Text = "Manali";
                lblDescription.Text = "Manali is a beautiful hill station located in the state of Himachal Pradesh, India. Surrounded by snow-capped mountains, pine forests, and the Beas River, Manali is a perfect destination for nature lovers, adventure seekers, and honeymoon couples. It is known for its scenic landscapes, cool climate, and thrilling adventure sports.";
                lblHistory.Text = "Manali has roots in ancient Hindu mythology and is believed to be the home of Sage Manu, after whom the town is named. The region reflects traditional Himachali culture, wooden architecture, local handicrafts, and vibrant festivals. Tibetan influence is also visible due to nearby monasteries and settlements.";
                litWear.Text = "<li>Warm jackets and sweaters (even in summer evenings)</li><li>Heavy woollens during winter</li><li>Comfortable trekking shoes</li><li>Thermal wear in snowfall season</li><li>Gloves, caps, and scarves</li><li>Light cotton clothes for daytime in summer</li>";
                litPlaces.Text = "<li>Solang Valley – Adventure sports hub</li><li>Rohtang Pass – Snow-covered mountain pass<?li><li>Hadimba Temple – Ancient wooden temple</li><li>Old Manali – Cozy cafés and scenic beauty</li><li>Manu Temple – Historic temple site</li><li>Mall Road – Shopping and local market</li>";
                lblBestTime.Text = "October to February";
                litFacts.Text = "<span class='tag'>Hill Station</span><span class='tag'>Adventure</span><span class='tag'>Snow</span>";
            }

            private void LoadAndaman()
            {
                imgDestination.ImageUrl = "Images/andaman1.jpg";
                lblTitle.Text = "Andaman & Nicobar Islands";
                lblLocation.Text = "India";
                lblRating.Text = "4.8 (2200 reviews)";
                lblDuration.Text = "4-6 days";
                lblCost.Text = "$120-250/day";
                lblAboutTitle.Text = "Andaman";
                lblDescription.Text = "Coral reefs and crystal-clear waters.he Andaman & Nicobar Islands are a group of picturesque islands located in the Bay of Bengal. Known for their pristine beaches, turquoise waters, coral reefs, and tropical forests, these islands are a paradise for beach lovers and scuba diving enthusiasts.";
                lblHistory.Text = "The islands have colonial history and marine biodiversity.The islands have a unique history influenced by indigenous tribes and colonial rule. During British rule, the famous Cellular Jail in Port Blair was used to imprison Indian freedom fighters. The islands are home to several tribal communities and reflect a mix of Indian and Southeast Asian cultural influences.";
                litWear.Text = "<li>Light cotton summer clothes</li><li>Swimwear for beaches</li><li>Flip-flops or sandals</li><li>Sunglasses and sun hats</li><li>Light cover-ups for sun protection</li><li>Comfortable beachwear.</li>";
                litPlaces.Text = "<li>Neil Island – Peaceful scenic island</li><li>Ross Island – Historic ruins</li><li>Baratang Island – Limestone caves</li>";
                lblBestTime.Text = "October to May";
                litFacts.Text = "<span class='tag'>Beach</span><span class='tag'>Island</span><span class='tag'>Snorkeling</span>";
            }
        }
    }