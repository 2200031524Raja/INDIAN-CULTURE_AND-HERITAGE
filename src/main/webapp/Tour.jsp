<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Explore India's rich heritage with curated cultural and historical tours. Book your Indian heritage tour today.">
    <title>Indian Heritage Tours | Book Your Cultural Journey</title>
    <link rel="stylesheet" href="styles.css">
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
            line-height: 1.6;
            background-color: #f5f5f5;
        }

        h1, h2 {
            font-family: 'Playfair Display', serif;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        /* Hero Section */
        #home {
            position: relative;
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.7)), url('images/Indian5.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        #home h1 {
            font-size: 4.5rem;
            margin-bottom: 20px;
            text-shadow: 2px 4px 6px rgba(0, 0, 0, 0.7);
        }

        #home p {
            font-size: 1.5rem;
            margin-bottom: 30px;
            text-shadow: 1px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .cta-button {
            background-color: #ff6347;
            color: white;
            padding: 15px 30px;
            font-size: 1.2rem;
            text-transform: uppercase;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        .cta-button:hover {
            background-color: #e53e36;
            transform: scale(1.1);
        }

        /* Booking Form */
        #book {
            padding: 60px 20px;
            background: url('images/heritage-bg.jpg') no-repeat center center/cover;
            color: white;
            text-align: center;
        }

        #book h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        form {
            max-width: 500px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);
        }

        form input, form select, form button {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        form button {
            background-color: #ff6347;
            color: white;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
        }

        form button:hover {
            background-color: #e53e36;
            transform: scale(1.05);
        }

        /* Contact Section */
        #contact {
            padding: 60px 20px;
            background: linear-gradient(to right, #4caf50, #87ceeb);
            color: white;
            text-align: center;
        }

        #contact h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        #contact p {
            margin-bottom: 30px;
            font-size: 1.2rem;
        }

        .contact-methods {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-bottom: 30px;
        }

        .contact-method {
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease-in-out;
        }

        .contact-method:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-5px);
        }

        .contact-method img {
            width: 50px;
            margin-bottom: 10px;
        }

        .contact-us form {
            max-width: 500px;
            margin: auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2);
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        footer p {
            font-size: 1rem;
        }
    </style>
</head>

<body>
    <!-- Hero Section -->
    <section id="home">
        <div class="hero-content">
            <h1>Discover India's Rich Heritage</h1>
            <p>Book your cultural journey and explore historic monuments, ancient temples, and royal palaces.</p>
            <button class="cta-button" onclick="scrollToSection('book')">Book Your Tour</button>
        </div>
    </section>

    <!-- Booking Form Section -->
    <section id="book">
        <h2>Book Your Tour</h2>
        <form action="submitBooking.jsp" method="POST">
            <label for="tour">Select a Tour:</label>
            <select id="tour" name="tour" required>
                <option value="taj-mahal">Taj Mahal Tour</option>
                <option value="jaipur-palaces">Jaipur Palaces Tour</option>
                <option value="varanasi-ghats">Varanasi Ghats Tour</option>
                <option value="kerala">Kerala Tour</option>
                <option value="charminar">Charminar Tour</option>
            </select>
            <input type="text" id="name" name="name" placeholder="Your Full Name" required>
            <input type="email" id="email" name="email" placeholder="Your Email Address" required>
            <input type="date" id="date" name="date" required>
            <button type="submit">Confirm Booking</button>
        </form>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <h2>Contact Us</h2>
        <p>For any inquiries, reach out to us through the details below.</p>
        <div class="contact-methods">
            <div class="contact-method">
                <img src="images/email.webp" alt="Email Icon">
                <p>Email: 2200031524@kluniversity.in</p>
            </div>
            <div class="contact-method">
                <img src="images/phone.webp" alt="Phone Icon">
                <p>Phone: +91 9515827103</p>
            </div>
        </div>
        <form action="submitContact.jsp" method="POST">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Indian Heritage Tours. All rights reserved.</p>
    </footer>

    <script>
        function scrollToSection(id) {
            document.getElementById(id).scrollIntoView({ behavior: 'smooth' });
        }
    </script>
</body>

</html>
