<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Indian Culture and Heritage Quiz Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
        }
        .result {
            max-width: 600px;
            margin: 20px auto;
            background: #ffffff;
            padding: 20px;
            border: 1px solid #dddddd;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .score {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }
        .message {
            font-size: 18px;
            margin-top: 20px;
            text-align: center;
        }
        .message p {
            font-size: 16px;
            color: #555;
        }
    </style>
</head>
<body>
    <h1>Your Indian Culture and Heritage Quiz Results</h1>

    <div class="result">
        <% 
            int score = 0;

            // Get answers from the quiz form
            String[] answers = {
                request.getParameter("q1"),
                request.getParameter("q2"),
                request.getParameter("q3"),
                request.getParameter("q4"),
                request.getParameter("q5"),
                request.getParameter("q6"),
                request.getParameter("q7"),
                request.getParameter("q8"),
                request.getParameter("q9"),
                request.getParameter("q10"),
                request.getParameter("q11"),
                request.getParameter("q12"),
                request.getParameter("q13"),
                request.getParameter("q14"),
                request.getParameter("q15"),
                request.getParameter("q16"),
                request.getParameter("q17"),
                request.getParameter("q18"),
                request.getParameter("q19"),
                request.getParameter("q20")
            };

            // Correct answers
           String[] correctAnswers = {
    "Diwali", "Taj Mahal", "Biryani", "Football", "Classical dance", 
    "Hinduism", "Religious significance", "Holi", "Sari", "Mahatma Gandhi", 
    "Rajasthan", "Bollywood", "Sanskrit", "Orange, White, Green", "Lassi", 
    "Sardar Patel", "Four", "Gulab Jamun", "New Delhi", "Bengaluru"
};

            // Check answers and calculate score
            for (int i = 0; i < answers.length; i++) {
                if (answers[i] != null && answers[i].equals(correctAnswers[i])) {
                    score++;
                }
            }
        %>

        <div class="score">
            Your score is: <%= score %>/20
        </div>

        <div class="message">
            <% 
                if (score == 20) {
            %>
                <p>Outstanding! You have an excellent knowledge of Indian culture and heritage.</p>
            <% 
                } else if (score >= 15) {
            %>
                <p>Great job! You have a strong understanding of Indian culture.</p>
            <% 
                } else if (score >= 10) {
            %>
                <p>Good! You have a decent knowledge, but there’s room for improvement.</p>
            <% 
                } else {
            %>
                <p>Keep exploring! Indian culture is vast, and there's always more to discover.</p>
            <% 
                }
            %>
        </div>
    </div>
</body>
</html>
