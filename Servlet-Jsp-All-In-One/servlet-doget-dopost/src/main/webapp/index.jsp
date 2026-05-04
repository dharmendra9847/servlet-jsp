<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register | Dynamic World</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 20px;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            border: 1px solid rgba(255, 255, 255, 0.18);
            width: 100%;
            max-width: 400px;
        }

        .form-label {
            font-weight: 600;
            color: #4b39b5;
            font-size: 0.9rem;
        }

        .form-control {
            border-radius: 10px;
            padding: 12px;
            border: 1px solid #ddd;
            background: #fdfdfd;
        }

        .form-control:focus {
            box-shadow: 0 0 0 3px rgba(118, 75, 162, 0.2);
            border-color: #764ba2;
        }

        .btn-register {
            background: linear-gradient(to right, #667eea, #764ba2);
            border: none;
            color: white;
            font-weight: 700;
            padding: 12px;
            border-radius: 10px;
            width: 100%;
            margin-top: 10px;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .btn-register:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            color: white;
        }
    </style>
</head>
<body>

<div class="glass-card">
    <div class="text-center mb-4">
        <h2 class="fw-bold text-dark">Join Us</h2>
        <p class="text-muted small">Join our dynamic community today.</p>
    </div>

    <!-- action points to your servlet -->
    <%--<form action="servlet-app" method="get">--%>
    <%--EVEN HERE WE DOES NOT SPECIFIES GET METHOD BY DEFAULT GET METHOD HAS BEEN INVOKED--%>
    <%--<form action="servlet-app">--%>
    <%--This get is not RECOMENDED WHENEVER we SEND CRITICAL DATA--%>
    <%--http://localhost:8080/servlet_doget_dopost_war_exploded/servlet-app?username=Rohan&city=Mumbai--%>

    <%--NOW WE ARE USING POST METHOD--%>
    <form action="servlet-app" method="post">
        <!-- Username Field -->
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
        </div>

        <!-- City Field -->
        <div class="mb-4">
            <label for="city" class="form-label">City</label>
            <input type="text" class="form-control" id="city" name="city" placeholder="Where do you live?" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-register shadow-sm">Sign Up</button>

        <div class="text-center mt-3">
            <a href="#" class="text-decoration-none small text-muted">Already have an account? <b>Login</b></a>
        </div>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>