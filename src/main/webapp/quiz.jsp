<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Culture and Heritage Quiz</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to bottom, #f8f9fa, #eaf2f8);
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #FF5722;
            font-family: 'Playfair Display', serif;
            margin-top: 30px;
            font-size: 2.8rem;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.2);
        }

        form {
            max-width: 800px;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            overflow: hidden;
        }

        form p {
            font-size: 1.2rem;
            color: #444;
            margin-bottom: 15px;
            font-weight: 600;
        }

        form label {
            display: block;
            padding: 10px 20px;
            margin-bottom: 10px;
            background: #f9f9f9;
            border-radius: 6px;
            border: 1px solid #ddd;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        form input[type="radio"] {
            display: none;
        }

        form input[type="radio"]:checked + label {
            background: #FF5722;
            color: white;
            border-color: #FF5722;
        }

        input[type="submit"] {
            background-color: #FF5722;
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 1.2rem;
            font-weight: 600;
            cursor: pointer;
            border-radius: 8px;
            display: block;
            margin: 30px auto;
            text-transform: uppercase;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #E64A19;
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }

        .quiz-container {
            background: url('images/quiz-background.jpg') no-repeat center center/cover;
            padding: 20px;
            border-radius: 12px;
            box-shadow: inset 0 0 50px rgba(0, 0, 0, 0.2);
        }

        .quiz-heading {
            text-align: center;
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 8px;
            background: rgba(255, 87, 34, 0.8);
            color: white;
            font-size: 2rem;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
        }

        .question {
            margin: 20px 0;
            border-bottom: 1px solid #ddd;
            padding-bottom: 15px;
        }

        .question:last-of-type {
            border-bottom: none;
        }

        @media (max-width: 768px) {
            form {
                padding: 20px;
            }

            h1 {
                font-size: 2.2rem;
            }

            form p {
                font-size: 1rem;
            }

            input[type="submit"] {
                font-size: 1rem;
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="quiz-container">
        <h1>Indian Culture and Heritage Quiz</h1>
        <form action="result.jsp" method="post">
            <!-- Heading -->
            <div class="quiz-heading">Test Your Knowledge!</div>

            <!-- Questions -->
            <!-- Question 1 -->
<div class="question">
    <p>1. What is the most famous Indian festival, celebrated with lights and sweets?</p>
    <input type="radio" name="q1" id="q1a" value="Diwali">
    <label for="q1a">Diwali</label>
    <input type="radio" name="q1" id="q1b" value="Holi">
    <label for="q1b">Holi</label>
    <input type="radio" name="q1" id="q1c" value="Durga Puja">
    <label for="q1c">Durga Puja</label>
</div>

<!-- Question 2 -->
<div class="question">
    <p>2. Which popular Indian landmark is considered a symbol of love and is located in Agra?</p>
    <input type="radio" name="q2" id="q2a" value="Red Fort">
    <label for="q2a">Red Fort</label>
    <input type="radio" name="q2" id="q2b" value="Qutub Minar">
    <label for="q2b">Qutub Minar</label>
    <input type="radio" name="q2" id="q2c" value="Taj Mahal">
    <label for="q2c">Taj Mahal</label>
</div>

<!-- Question 3 -->
<div class="question">
    <p>3. Which popular Indian dish is made with rice and spices?</p>
    <input type="radio" name="q3" id="q3a" value="Biryani">
    <label for="q3a">Biryani</label>
    <input type="radio" name="q3" id="q3b" value="Tacos">
    <label for="q3b">Tacos</label>
    <input type="radio" name="q3" id="q3c" value="Sushi">
    <label for="q3c">Sushi</label>
</div>

<!-- Question 4 -->
<div class="question">
    <p>4. Which Indian sport is similar to soccer and played by kicking a ball with the feet?</p>
    <input type="radio" name="q4" id="q4a" value="Cricket">
    <label for="q4a">Cricket</label>
    <input type="radio" name="q4" id="q4b" value="Football">
    <label for="q4b">Football</label>
    <input type="radio" name="q4" id="q4c" value="Kabaddi">
    <label for="q4c">Kabaddi</label>
</div>

<!-- Question 5 -->
<div class="question">
    <p>5. What type of dance is 'Bharatanatyam'?</p>
    <input type="radio" name="q5" id="q5a" value="Classical dance">
    <label for="q5a">Classical dance</label>
    <input type="radio" name="q5" id="q5b" value="Folk dance">
    <label for="q5b">Folk dance</label>
    <input type="radio" name="q5" id="q5c" value="Modern dance">
    <label for="q5c">Modern dance</label>
</div>

<!-- Question 6 -->
<div class="question">
    <p>6. What is the primary religion followed in India?</p>
    <input type="radio" name="q6" id="q6a" value="Hinduism">
    <label for="q6a">Hinduism</label>
    <input type="radio" name="q6" id="q6b" value="Christianity">
    <label for="q6b">Christianity</label>
    <input type="radio" name="q6" id="q6c" value="Islam">
    <label for="q6c">Islam</label>
</div>

<!-- Question 7 -->
<div class="question">
    <p>7. The 'Ganges' is an important river in India. What is it known for?</p>
    <input type="radio" name="q7" id="q7a" value="Fishing industry">
    <label for="q7a">Fishing industry</label>
    <input type="radio" name="q7" id="q7b" value="Water sports">
    <label for="q7b">Water sports</label>
    <input type="radio" name="q7" id="q7c" value="Religious significance">
    <label for="q7c">Religious significance</label>
</div>

<!-- Question 8 -->
<div class="question">
    <p>8. Which Indian festival is known for the throwing of colored powders?</p>
    <input type="radio" name="q8" id="q8a" value="Eid">
    <label for="q8a">Eid</label>
    <input type="radio" name="q8" id="q8b" value="Holi">
    <label for="q8b">Holi</label>
    <input type="radio" name="q8" id="q8c" value="Diwali">
    <label for="q8c">Diwali</label>
</div>

<!-- Question 9 -->
<div class="question">
    <p>9. Which type of traditional Indian clothing is worn by women and consists of a long piece of cloth draped around the body?</p>
    <input type="radio" name="q9" id="q9a" value="Poncho">
    <label for="q9a">Poncho</label>
    <input type="radio" name="q9" id="q9b" value="Sari">
    <label for="q9b">Sari</label>
    <input type="radio" name="q9" id="q9c" value="Kimono">
    <label for="q9c">Kimono</label>
</div>

<!-- Question 10 -->
<div class="question">
    <p>10. Who was the famous Indian leader known for promoting non-violence and leading the independence movement?</p>
    <input type="radio" name="q10" id="q10a" value="Jawaharlal Nehru">
    <label for="q10a">Jawaharlal Nehru</label>
    <input type="radio" name="q10" id="q10b" value="Mahatma Gandhi">
    <label for="q10b">Mahatma Gandhi</label>
    <input type="radio" name="q10" id="q10c" value="Subhas Chandra Bose">
    <label for="q10c">Subhas Chandra Bose</label>
</div>

<!-- Repeat similar structure for questions 11 to 20 -->

           <!-- Question 11 -->
<div class="question">
    <p>11. Which is the largest state in India by area?</p>
    <input type="radio" name="q11" id="q11a" value="Maharashtra">
    <label for="q11a">Maharashtra</label>
    <input type="radio" name="q11" id="q11b" value="Uttar Pradesh">
    <label for="q11b">Uttar Pradesh</label>
    <input type="radio" name="q11" id="q11c" value="Rajasthan">
    <label for="q11c">Rajasthan</label>
</div>

<!-- Question 12 -->
<div class="question">
    <p>12. The Indian film industry is popularly known as what?</p>
    <input type="radio" name="q12" id="q12a" value="Bollywood">
    <label for="q12a">Bollywood</label>
    <input type="radio" name="q12" id="q12b" value="Tollywood">
    <label for="q12b">Tollywood</label>
    <input type="radio" name="q12" id="q12c" value="Hollywood">
    <label for="q12c">Hollywood</label>
</div>

<!-- Question 13 -->
<div class="question">
    <p>13. Which of the following is an ancient Indian language, still spoken in some parts of India?</p>
    <input type="radio" name="q13" id="q13a" value="Latin">
    <label for="q13a">Latin</label>
    <input type="radio" name="q13" id="q13b" value="Greek">
    <label for="q13b">Greek</label>
    <input type="radio" name="q13" id="q13c" value="Sanskrit">
    <label for="q13c">Sanskrit</label>
</div>

<!-- Question 14 -->
<div class="question">
    <p>14. Which of the following colors are present in the Indian national flag?</p>
    <input type="radio" name="q14" id="q14a" value="Red, Blue, Green">
    <label for="q14a">Red, Blue, Green</label>
    <input type="radio" name="q14" id="q14b" value="Orange, White, Green">
    <label for="q14b">Orange, White, Green</label>
    <input type="radio" name="q14" id="q14c" value="Yellow, Blue, Green">
    <label for="q14c">Yellow, Blue, Green</label>
</div>

<!-- Question 15 -->
<div class="question">
    <p>15. What is the popular Indian drink made from yogurt, spices, and herbs?</p>
    <input type="radio" name="q15" id="q15a" value="Coffee">
    <label for="q15a">Coffee</label>
    <input type="radio" name="q15" id="q15b" value="Lassi">
    <label for="q15b">Lassi</label>
    <input type="radio" name="q15" id="q15c" value="Tea">
    <label for="q15c">Tea</label>
</div>

<!-- Question 16 -->
<div class="question">
    <p>16. Which famous Indian freedom fighter is also known as the 'Iron Man of India'?</p>
    <input type="radio" name="q16" id="q16a" value="Bhagat Singh">
    <label for="q16a">Bhagat Singh</label>
    <input type="radio" name="q16" id="q16b" value="Subhas Chandra Bose">
    <label for="q16b">Subhas Chandra Bose</label>
    <input type="radio" name="q16" id="q16c" value="Sardar Patel">
    <label for="q16c">Sardar Patel</label>
</div>

<!-- Question 17 -->
<div class="question">
    <p>17. The national emblem of India contains how many Ashoka lions?</p>
    <input type="radio" name="q17" id="q17a" value="Three">
    <label for="q17a">Three</label>
    <input type="radio" name="q17" id="q17b" value="Four">
    <label for="q17b">Four</label>
    <input type="radio" name="q17" id="q17c" value="Five">
    <label for="q17c">Five</label>
</div>

<!-- Question 18 -->
<div class="question">
    <p>18. What is the famous Indian sweet made from condensed milk and sugar, often enjoyed during festivals?</p>
    <input type="radio" name="q18" id="q18a" value="Gulab Jamun">
    <label for="q18a">Gulab Jamun</label>
    <input type="radio" name="q18" id="q18b" value="Mithai">
    <label for="q18b">Mithai</label>
    <input type="radio" name="q18" id="q18c" value="Rasgulla">
    <label for="q18c">Rasgulla</label>
</div>

<!-- Question 19 -->
<div class="question">
    <p>19. What is the capital of India?</p>
    <input type="radio" name="q19" id="q19a" value="New Delhi">
    <label for="q19a">New Delhi</label>
    <input type="radio" name="q19" id="q19b" value="Mumbai">
    <label for="q19b">Mumbai</label>
    <input type="radio" name="q19" id="q19c" value="Bengaluru">
    <label for="q19c">Bengaluru</label>
</div>

<!-- Question 20 -->
<div class="question">
    <p>20. Which city is known as the 'Silicon Valley' of India due to its booming tech industry?</p>
    <input type="radio" name="q20" id="q20a" value="Chennai">
    <label for="q20a">Chennai</label>
    <input type="radio" name="q20" id="q20b" value="Bengaluru">
    <label for="q20b">Bengaluru</label>
    <input type="radio" name="q20" id="q20c" value="Mumbai">
    <label for="q20c">Mumbai</label>
</div>


            <!-- Submit Button -->
            <input type="submit" value="Submit Quiz">
        </form>
    </div>
</body>
</html>
