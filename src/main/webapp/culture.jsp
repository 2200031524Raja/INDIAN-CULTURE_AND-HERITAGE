<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Dive into India's diverse culture and heritage. Learn about festivals, music, dance, and architectural wonders.">
    <title>Indian Culture and Heritage</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to bottom, #ffffff, #eaf2f8);
            color: #333;
            overflow-x: hidden;
        }

        h1, h2 {
            font-family: 'Playfair Display', serif;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            width: 100%;
            height: auto;
            display: block;
            border-radius: 8px;
        }

        /* Hero Section */
        .hero {
            position: relative;
            height: 90vh;
            background: url('images/hero-indian-culture.jpg') no-repeat center center/cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        .hero h1 {
            position: relative;
            z-index: 2;
            font-size: 4.5rem;
            text-shadow: 2px 4px 8px rgba(0, 0, 0, 0.8);
            animation: fadeInUp 2s ease-out;
        }

        .hero p {
            position: relative;
            z-index: 2;
            font-size: 1.5rem;
            margin: 20px 0 30px;
            opacity: 0;
            animation: fadeIn 2.5s ease forwards;
        }

        .hero .cta-button {
            position: relative;
            z-index: 2;
            background-color: #f39c12;
            color: white;
            padding: 15px 30px;
            font-size: 1.2rem;
            border-radius: 25px;
            text-decoration: none;
            transition: transform 0.3s, background-color 0.3s;
        }

        .hero .cta-button:hover {
            transform: scale(1.1);
            background-color: #e67e22;
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }

        /* Main Content */
        main {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }

        /* Content Section */
        section {
            background: white;
            margin: 40px 0;
            padding: 20px;
            border-radius: 12px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 20px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            position: relative;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        section:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        section img {
            flex: 1 1 50%;
            max-height: 300px;
            object-fit: cover;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        section:hover img {
            transform: scale(1.05);
        }

        section .text {
            flex: 1 1 50%;
        }

        section h2 {
            color: #3498db;
            font-size: 2rem;
            margin-bottom: 10px;
        }

        section p {
            line-height: 1.6;
            font-size: 1.2rem;
        }

        /* Explore Button */
        .explore {
            text-align: center;
            margin: 50px 0;
        }

        .explore a {
            background: linear-gradient(to right, #16a085, #1abc9c);
            color: white;
            padding: 15px 40px;
            font-size: 1.4rem;
            border-radius: 30px;
            text-decoration: none;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .explore a:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        /* Parallax Effect for Footer */
        footer {
            background: url('images/footer-parallax.jpg') no-repeat center center/cover;
            color: white;
            text-align: center;
            padding: 30px 20px;
            position: relative;
        }

        footer::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            z-index: 1;
        }

        footer p {
            position: relative;
            z-index: 2;
            font-size: 1rem;
        }
    </style>
</head>

<body>
    <!-- Hero Section -->
    <div class="hero">
        <h1>Discover India's Timeless Culture</h1>
        <p>Unravel the wonders of Indian festivals, music, and heritage.</p>
        <a href="#content" class="cta-button">Explore Now</a>
    </div>

    <!-- Main Content -->
    <main id="content">
        <!-- Introduction Section -->
        <section>
            <img src="images/culture.webp" alt="Indian Culture">
            <div class="text">
                <h2>Introduction</h2>
                <p>Indian culture, one of the oldest in the world, is renowned for its diversity, traditions, and rich history. From vibrant festivals to timeless architecture, India’s heritage is an endless journey of discovery.</p>
            </div>
        </section>

        <!-- Festivals Section -->
        <section>
            <img src="images/Festivals.webp" alt="Indian Festivals">
            <div class="text">
                <h2>Festivals</h2>
                <p>India celebrates festivals like no other country. From the lights of Diwali to the colors of Holi, each festival reflects the nation’s unity in diversity. Experience the joy and spirituality of Indian celebrations!</p>
            </div>
        </section>

        <!-- Dance and Music Section -->
        <section>
            <img src="images/dances.jpg" alt="Indian Dance Forms">
            <div class="text">
                <h2>Dance and Music</h2>
                <p>Bharatanatyam, Kathakali, and Odissi are not just dance forms; they are stories told through movement. India's classical music, be it Hindustani or Carnatic, resonates with the rhythm of the soul.</p>
            </div>
        </section>

        <!-- Architecture Section -->
        <section>
            <img src="images/Arc.jpg" alt="Indian Architecture">
            <div class="text">
                <h2>Architecture</h2>
                <p>Indian temples like the Brihadeeswarar Temple, Konark Sun Temple, and Golden Temple are architectural marvels that blend history, art, and culture. They are timeless treasures of human creativity and devotion.</p>
            </div>
        </section>

        <!-- Explore More Section -->
        <div class="explore">
            <a href="quiz.jsp">Take the Indian Culture Quiz</a>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Indian Culture and Heritage. All Rights Reserved.</p>
    </footer>
</body>

</html>
