<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | MVC Web App</title>

    <!-- Bootstrap 3 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --glass-bg: rgba(255, 255, 255, 0.95);
            --transition-smooth: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
        }

        body {
            background: var(--primary-gradient);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            overflow: hidden;
        }

        /* Animated Background Particles */
        .background-bubbles {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            z-index: -1; margin: 0; padding: 0;
        }
        .background-bubbles li {
            position: absolute; list-style: none; display: block;
            width: 40px; height: 40px; background-color: rgba(255, 255, 255, 0.15);
            bottom: -160px; animation: square 25s infinite; transition-timing-function: linear;
        }
        /* Bubble variations */
        .background-bubbles li:nth-child(1) { left: 10%; }
        .background-bubbles li:nth-child(2) { left: 20%; width: 80px; height: 80px; animation-delay: 2s; animation-duration: 17s; }
        .background-bubbles li:nth-child(3) { left: 70%; width: 100px; height: 100px; }

        @keyframes square {
            0% { transform: translateY(0); }
            100% { transform: translateY(-1200px) rotate(600deg); opacity: 0; }
        }

        /* Login Card Styling */
        .login-card {
            background: var(--glass-bg);
            padding: 50px 40px;
            border-radius: 24px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.4);
            width: 100%;
            max-width: 420px;
            animation: fadeInScale 0.7s ease-out;
            position: relative;
        }

        @keyframes fadeInScale {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        h2 {
            font-weight: 700;
            color: #1a202c;
            margin-bottom: 35px;
            text-align: center;
            letter-spacing: -1px;
        }

        .form-group label {
            font-weight: 600;
            color: #4a5568;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 8px;
        }

        .form-control {
            border-radius: 12px;
            height: 50px;
            border: 2px solid #edf2f7;
            background: #f7fafc;
            transition: var(--transition-smooth);
        }

        .form-control:focus {
            border-color: #667eea;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.1);
            transform: translateY(-2px);
        }

        .btn-login {
            background: var(--primary-gradient);
            color: white;
            border: none;
            width: 100%;
            padding: 14px;
            font-size: 17px;
            font-weight: 600;
            border-radius: 12px;
            margin-top: 15px;
            transition: var(--transition-smooth);
            box-shadow: 0 10px 15px -3px rgba(118, 75, 162, 0.3);
        }

        .btn-login:hover {
            transform: translateY(-3px);
            box-shadow: 0 20px 25px -5px rgba(118, 75, 162, 0.4);
            color: #fff;
            opacity: 0.95;
        }

        .btn-login:active {
            transform: scale(0.98);
        }

        .reg-link {
            display: block;
            text-align: center;
            margin-top: 25px;
            color: #718096;
            font-size: 14px;
            text-decoration: none;
            transition: 0.3s;
        }

        .reg-link b { color: #764ba2; }
        .reg-link:hover { opacity: 0.8; }

        /* Custom Alert Styling */
        .alert {
            border-radius: 12px;
            border: none;
            font-weight: 500;
            animation: slideDown 0.5s ease-out;
        }

        @keyframes slideDown {
            from { transform: translateY(-20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>

<!-- Animated Background Particles -->
<ul class="background-bubbles">
    <li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
</ul>

<div class="login-card">
    <h2>Welcome Back</h2>

    <!-- Improved Success Alert -->
    <div id="successAlert" class="alert alert-success hide">
        <span class="glyphicon glyphicon-ok-sign"></span> Account created successfully! Please sign in.
    </div>

    <!-- Error Alert for Invalid Login -->
    <div id="errorAlert" class="alert alert-danger hide">
        <span class="glyphicon glyphicon-exclamation-sign"></span> Invalid email or password.
    </div>

    <form method="POST" action="login">
        <div class="form-group">
            <label>Email Address</label>
            <input type="email" class="form-control" name="email" placeholder="name@company.com" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" placeholder="••••••••" required>
        </div>

        <button type="submit" class="btn btn-login">Sign In</button>

        <a href="index.jsp" class="reg-link">
            Don't have an account? <b>Register Now</b>
        </a>
    </form>
</div>

<!-- Scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function() {
        const urlParams = new URLSearchParams(window.location.search);

        // Check for Registration Success
        if (urlParams.get('registered') === 'true' || urlParams.get('status') === 'success') {
            $('#successAlert').removeClass('hide');
        }

        // Check for Invalid Login
        if (urlParams.get('error') === 'invalid') {
            $('#errorAlert').removeClass('hide');
        }

        // Logout Alert with smooth notification
        if (urlParams.get('logout') === 'true') {
            // Instead of a simple alert, we can dynamically add a temp alert
            $('<div class="alert alert-info"><span class="glyphicon glyphicon-info-sign"></span> Logged out successfully.</div>')
                .insertBefore('form').delay(3000).fadeOut();
        }
    });
</script>

</body>
</html>