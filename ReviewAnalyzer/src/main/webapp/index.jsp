<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
    <title>Post Analyzer</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .container {
            max-width: 700px;
            background: #fff;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }
        h2 {
            font-weight: 700;
            color: #343a40;
            text-align: center;
            margin-bottom: 25px;
        }
        textarea {
            border-radius: 10px;
            padding: 15px;
            font-size: 1rem;
        }
        .btn-gradient {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
            border: none;
            font-weight: 600;
            padding: 10px 20px;
            border-radius: 8px;
            transition: transform 0.2s ease;
        }
        .btn-gradient:hover {
            transform: scale(1.05);
        }
        .result-box {
            margin-top: 30px;
            padding: 20px;
            border-radius: 12px;
            background-color: #f8f9fa;
            box-shadow: inset 0 2px 5px rgba(0,0,0,0.1);
        }
        .result-box h4 {
            color: #495057;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Social Media Post Analyzer</h2>

    <form action="analyze" method="post">
        <div class="mb-3">
            <label for="post" class="form-label fw-bold">Enter your post:</label>
            <textarea id="post" name="post" class="form-control" rows="5" required></textarea>
        </div>
        <div class="text-center">
            <button type="submit" class="btn-gradient">Analyze</button>
        </div>
    </form>

    <%
        String analysis = (String) request.getAttribute("analysis");
        String post = (String) request.getAttribute("post");
        if (analysis != null) {
    %>
    <div class="result-box">
        <h4>Original Post:</h4>
        <p><%= post %></p>

        <h4>AI Analysis:</h4>
        <pre><%= analysis %></pre>
    </div>
    <%
        }
    %>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>