<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}

%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title> Inspire awareness of Indian culture, heritage, historical places, and
famous monuments</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<style>
        body {
            font-family: 'Lato', sans-serif;
            color: #343a40;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        header {
            position: relative;
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://upload.wikimedia.org/wikipedia/commons/d/da/Taj-Mahal.jpg') no-repeat center center/cover;
            height: 100vh;
            color: white;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        header h1 {
            font-size: 4rem;
            font-family: 'Montserrat', sans-serif;
            letter-spacing: 2px;
        }
        header p {
            font-size: 1.5rem;
        }
        .features {
            text-align: center;
            padding: 3em 0;
        }
        .feature {
            margin-bottom: 2em;
        }
        .feature i {
            font-size: 4rem;
            color: #e74c3c;
            margin-bottom: 1em;
        }
        .feature h3 {
            font-family: 'Montserrat', sans-serif;
            margin-bottom: 0.5em;
        }
        .parallax {
            background: url('https://upload.wikimedia.org/wikipedia/commons/4/42/Qutub_Minar_from_ground.jpg') no-repeat center center/cover;
            height: 400px;
            position: relative;
            background-attachment: fixed;
        }
        .resources {
            padding: 3em 0;
        }
        .resources h2 {
            font-family: 'Montserrat', sans-serif;
            text-align: center;
            margin-bottom: 2em;
        }
        .btn-resource {
            margin: 1em 0;
            background: #e74c3c;
            color: white;
            transition: background 0.3s;
        }
        .btn-resource:hover {
            background: #c0392b;
        }
        .cta {
            background: linear-gradient(to right, #e74c3c, #c0392b);
            color: white;
            padding: 2em 0;
            text-align: center;
        }
        .cta h2 {
            margin: 0;
            font-family: 'Montserrat', sans-serif;
        }
        footer {
            background: #343a40;
            color: white;
            padding: 1em 0;
            text-align: center;
        }
    </style>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Indian heritage and culture</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#Home">Home</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="culture.jsp">Indian Culture</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="explore.html">Heritage sites and Famous Monuments</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="cusine.html">Indian Cuisines</a></li>
					
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Tour.jsp">Tour</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="admin.jsp">Only Admin use</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="log.jsp">Logout</a></li>
						
					
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To India</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">
				Inspiring awareness of Indian culture, heritage, historical places, and famous monuments</p>
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section Indian Culture" id="Indian Culture">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Indian Culture</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal1">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/Indian1.jpeg"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/Indian2.jpeg"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal3">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div>
						<img class="img-fluid" src="assets/img/portfolio/Indian6.jpg"
							alt="..." />
					</div>
				
				</div>
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">Heritage Sites and Famous Monuments</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">India is home to a rich cultural and natural heritage, with numerous sites recognized by UNESCO as World Heritage Sites. Here are The list of  Indian Heritage Sites, categorized into cultural, natural, and mixed heritage sites.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">Tourist Places</p>
				</div>
			</div>
			<!-- About Section Button-->
			</div>
				
				<div class="text-center mt-4">
    <!-- Button styled as a link -->
    <a href="explore.html" class="btn btn-primary btn-lg">Explore Heritage Sites</a>
</div>

				
		</div>
	</section>
	
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
    <div class="row">
        <!-- Footer Location-->
        <div class="col-lg-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Location</h4>
            <p class="lead mb-0">
                <a href="Map.html" target="_blank" rel="noopener noreferrer">Open Google Maps</a>
            </p>
        </div>
    </div>
</div>
			
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2021</small>
		</div>
	</div>
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Indian Food
									</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/Indian1.jpeg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">
    Indian cuisine is incredibly diverse, reflecting the country’s rich cultural
    heritage and regional variations, particularly between North and South India. 
    <br> 
    <b>North Indian food</b> is characterized by its use of dairy products, rich gravies, 
       and a variety of spices. Popular dishes include <i>Butter Chicken</i>, 
       <i>Rogan Josh</i>, and <i>Paneer Tikka</i>, often accompanied by <i>naan</i> or 
       <i>roti</i>. The cuisine features a variety of lentils and legumes, with dishes like
       <i>Dal Makhani</i> and <i>Chole Bhature</i> being staples. North India is also known
       for its vibrant street food culture, with treats like <i>Pani Puri</i>, <i>Chaat</i>,
       and <i>Samosas</i> delighting locals and visitors alike.
    <br><br>
    <b>South Indian cuisine</b>, in contrast, is known for its lighter, more refreshing flavors, often featuring rice as a staple grain. Popular dishes include <i>Dosa</i> (a fermented crepe made from rice and lentils), <i>Idli</i> (steamed rice cakes), and <i>Sambar</i> (a lentil-based vegetable stew). South Indian meals often include coconut, curry leaves, and a variety of spices, with flavors that can range from tangy to spicy. The region is also famous for its fragrant <i>Biryani</i>, a rice dish cooked with spices and meat or vegetables, enjoyed across India.
    <br><br>
    Both North and South Indian cuisines showcase a wide variety of vegetarian and non-vegetarian options, reflecting the country’s cultural diversity. Indian food plays a significant role in traditions, celebrations, and festivals, making it a beloved cuisine worldwide for its richness in flavors and depth in variety.
</p>
								data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Indian People
									</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/Indian2.jpeg" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">The national flag of India, known as the Tiranga, is a powerful symbol of pride and unity, consisting of three horizontal stripes: saffron at the top, representing courage and sacrifice; white in the middle, symbolizing peace and purity; and green at the bottom, signifying faith and the land's fertility. At the center of the white stripe lies the Ashoka Chakra, a navy blue wheel with 24 spokes, representing the eternal wheel of law and righteousness. Officially adopted on July 22, 1947, the flag serves as a reminder of India's struggle for independence and its commitment to democracy and unity in diversity.

The people of India reflect this diversity, as the country is home to over 1.4 billion individuals from various ethnic groups, religions, and languages. Major religions include Hinduism, Islam, Christianity, Sikhism, Buddhism, and Jainism, contributing to a rich cultural landscape characterized by vibrant festivals and traditions. Indian culture is renowned for its art, music, dance, and literature, with classical dance forms like Bharatanatyam and Kathak showcasing its heritage. Society in India is family-oriented, with strong community ties and a diversity of traditional attire, such as sarees for women and kurta-pajamas for men. The Indian economy is one of the fastest-growing globally, driven by agriculture, manufacturing, and services, with urbanization increasing as people migrate to cities for better opportunities. Hindi is the most widely spoken language, while English serves as an important means of communication in business and education, reflecting the local culture and identity in various states. Together, the Indian flag and its people embody the nation's rich history, cultural heritage, and collective aspirations.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Indian Festivals</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/circus.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Indian festivals are a vibrant reflection of the country’s rich cultural heritage, celebrating various religious and cultural traditions throughout the year. Each festival is marked by its unique rituals, customs, and local flavors, making them a significant part of Indian life. One of the most widely celebrated festivals is Diwali, also known as the Festival of Lights. It symbolizes the victory of light over darkness and good over evil. Families illuminate their homes with oil lamps, decorate with rangoli (colorful floor designs), and exchange sweets and gifts. Fireworks light up the night sky, and prayers are offered to Goddess Lakshmi for prosperity and wealth.
           Another major festival is Holi, the Festival of Colors, celebrated in spring. It marks the arrival of warmer days and the end of winter. People gather to throw colored powders and water at each other, dance, and indulge in festive foods like gujiya (sweet dumplings) and thandai (a spiced milk drink). The festival embodies joy, love, and the spirit of togetherness, as people forget their differences and celebrate in harmony.
           The festival of Christmas, celebrated by Christians, brings together families and communities to commemorate the birth of Jesus Christ, with carols, decorations, and special meals. Each festival, regardless of religious affiliation, brings communities together, fostering a sense of belonging and unity among the diverse population of India. Through these celebrations, the essence of Indian culture, hospitality, and the importance of family and community are vividly expressed, making festivals an integral part of life in India.
           Eid, celebrated by the Muslim community, involves prayers at mosques, festive meals, and the act of giving to the less fortunate, known as Zakat. Navratri, a nine-night festival dedicated to the worship of Goddess Durga, involves vibrant dance forms like Garba and Dandiya, along with fasting and prayers. Each region of India also has its local festivals, such as Pongal in Tamil Nadu, celebrating the harvest, and Baisakhi in Punjab, marking the harvest and the Punjabi New Year.							</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
