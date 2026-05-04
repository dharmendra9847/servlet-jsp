<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome | Dynamic World</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .hero-card {
            background: white;
            padding: 3rem;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 600px;
            width: 90%;
        }
        .btn-register {
            background-color: #4facfe;
            border: none;
            padding: 12px 30px;
            font-weight: 700;
            transition: transform 0.2s;
        }
        .btn-register:hover {
            transform: translateY(-2px);
            background-color: #00f2fe;
        }
        h1 { color: #2d3436; font-weight: 700; }
        p { color: #636e72; }
    </style>
</head>
<body>

<div class="hero-card">
    <h1 class="mb-3">Hello!</h1>
    <h2 class="h4 mb-4">Welcome back to our <span style="color: #4facfe;">Dynamic World</span></h2>

    <p class="mb-5">
        Join our community to unlock exclusive, dynamic content tailored just for you.
        Registration is fast and free!
    </p>

    <div class="d-grid gap-2 d-md-block">
        <a href="registration.jsp" class="btn btn-primary btn-lg btn-register shadow-sm">
            Get Started Now
        </a>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>