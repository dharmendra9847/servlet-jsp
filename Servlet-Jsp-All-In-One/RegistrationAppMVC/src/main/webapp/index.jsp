<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register | MVC Web App</title>

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
            overflow-x: hidden;
        }

        /* Animated Background Shapes */
        .circles {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            overflow: hidden; z-index: -1;
        }
        .circles li {
            position: absolute; display: block; list-style: none;
            width: 20px; height: 20px; background: rgba(255, 255, 255, 0.2);
            animation: animate 25s linear infinite; bottom: -150px;
        }
        /* Randomized circles sizes/positions */
        .circles li:nth-child(1) { left: 25%; width: 80px; height: 80px; animation-delay: 0s; }
        .circles li:nth-child(2) { left: 10%; width: 20px; height: 20px; animation-delay: 2s; animation-duration: 12s; }
        .circles li:nth-child(3) { left: 70%; width: 20px; height: 20px; animation-delay: 4s; }

        @keyframes animate {
            0% { transform: translateY(0) rotate(0deg); opacity: 1; border-radius: 0; }
            100% { transform: translateY(-1000px) rotate(720deg); opacity: 0; border-radius: 50%; }
        }

        /* Registration Card */
        .registration-card {
            background: var(--glass-bg);
            padding: 50px;
            border-radius: 24px;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 520px;
            position: relative;
            transform: translateY(0);
            transition: var(--transition-smooth);
            animation: slideUp 0.8s ease-out;
        }

        .registration-card:hover {
            transform: translateY(-5px);
        }

        h2 {
            font-weight: 700;
            color: #1a202c;
            margin-bottom: 30px;
            letter-spacing: -0.5px;
        }

        /* Input Styling with Transitions */
        .form-group label {
            font-weight: 600;
            color: #4a5568;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: var(--transition-smooth);
        }

        .form-control {
            border-radius: 12px;
            height: 50px;
            border: 2px solid #edf2f7;
            background: #f7fafc;
            transition: var(--transition-smooth);
            box-shadow: none;
        }

        .form-control:focus {
            border-color: #667eea;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.1);
            transform: scale(1.01);
        }

        /* Button Animation */
        .btn-register {
            background: var(--primary-gradient);
            color: white;
            border: none;
            width: 100%;
            padding: 14px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 12px;
            margin-top: 20px;
            cursor: pointer;
            position: relative;
            overflow: hidden;
            transition: var(--transition-smooth);
        }

        .btn-register:hover {
            box-shadow: 0 10px 20px -10px #764ba2;
            transform: translateY(-2px);
            opacity: 0.95;
            color: #fff;
        }

        .btn-register:active {
            transform: scale(0.98);
        }

        .login-link {
            margin-top: 25px;
            font-size: 14px;
        }

        .login-link a {
            color: #764ba2;
            text-decoration: none;
            font-weight: 700;
            transition: 0.3s;
        }

        .login-link a:hover {
            color: #667eea;
            text-decoration: underline;
        }

        /* Custom Keyframes */
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Modal Design */
        .modal-content {
            border-radius: 30px;
            border: none;
            overflow: hidden;
        }

        .modal-body { padding: 40px !important; }

        .success-icon {
            font-size: 70px;
            color: #28a745;
            animation: scaleIn 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        @keyframes scaleIn {
            from { transform: scale(0); }
            to { transform: scale(1); }
        }
    </style>
</head>
<body>

<!-- Animated Background Circles -->
<ul class="circles">
    <li></li><li></li><li></li><li></li><li></li><li></li><li></li>
</ul>

<div class="registration-card">
    <h2 class="text-center">Create Account</h2>
    <form method="POST" action="register">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" class="form-control" name="fname" placeholder="John" required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" class="form-control" name="lname" placeholder="Doe" required>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label>Email Address</label>
            <input type="email" class="form-control" name="email" placeholder="john@example.com" required>
        </div>

        <div class="form-group">
            <label>City</label>
            <input type="text" class="form-control" name="city" placeholder="New York" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" placeholder="••••••••" required>
        </div>

        <button type="submit" class="btn btn-register">
            <span>Get Started</span>
        </button>

        <div class="login-link text-center">
            <p class="text-muted">Already a member? <a href="login.jsp">Log in here</a></p>
        </div>
    </form>
</div>

<!-- Success Modal -->
<div id="successModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-sm text-center">
        <div class="modal-content">
            <div class="modal-body">
                <span class="glyphicon glyphicon-ok-circle success-icon"></span>
                <h3 style="font-weight:700;">All Set!</h3>
                <p class="text-muted">Your account was created successfully. Ready to dive in?</p>
                <a href="login.jsp" class="btn btn-register" style="margin-top:10px;">Sign In Now</a>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('status') === 'success') {
            $('#successModal').modal('show');
        }
    });
</script>

</body>
</html>