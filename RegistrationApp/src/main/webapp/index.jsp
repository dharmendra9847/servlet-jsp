<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dynamic World | Home</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

    <style>
        :root {
            --glass-bg: rgba(255, 255, 255, 0.85);
            --accent-color: #764ba2;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background: radial-gradient(circle at top right, #e9defa 0%, #fbfcdb 100%);
            min-height: 100vh;
            color: #2d3436;
        }

        .hero-section {
            padding: 100px 0 60px;
            text-align: center;
        }

        .bento-card {
            background: var(--glass-bg);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 24px;
            padding: 25px;
            height: 100%;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            box-shadow: 0 10px 30px rgba(0,0,0,0.05);
        }

        .bento-card:hover {
            transform: scale(1.02);
            box-shadow: 0 20px 40px rgba(118, 75, 162, 0.15);
        }

        .icon-box {
            width: 50px;
            height: 50px;
            background: #eee7f7;
            color: var(--accent-color);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            margin-bottom: 15px;
        }

        .stat-number {
            font-size: 2.5rem;
            font-weight: 800;
            background: linear-gradient(to right, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .btn-main {
            background: var(--accent-color);
            color: white;
            border-radius: 50px;
            padding: 15px 40px;
            font-weight: 700;
            border: none;
            box-shadow: 0 8px 20px rgba(118, 75, 162, 0.3);
            transition: all 0.3s ease;
        }

        .btn-main:hover {
            background: #664190;
            color: white;
            transform: translateY(-3px);
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Hero Header -->
    <header class="hero-section">
        <h1 class="display-3 fw-800 mb-3">The <span style="color: var(--accent-color);">Dynamic</span> World</h1>
        <p class="lead text-muted mb-5 mx-auto" style="max-width: 600px;">
            Experience a platform that evolves with you. Join thousands of creators shaping the future of digital content.
        </p>
        <a href="register.jsp" class="btn btn-main btn-lg">Start Your Journey</a>
    </header>

    <!-- Bento Grid / Interesting Content -->
    <div class="row g-4 mb-5">
        <!-- Dynamic Stats -->
        <div class="col-md-4">
            <div class="bento-card">
                <div class="icon-box"><i class="bi bi-people-fill"></i></div>
                <h5 class="fw-bold">Global Community</h5>
                <div class="stat-number">12.5k</div>
                <p class="small text-muted">New members joined this hour.</p>
            </div>
        </div>

        <!-- Interesting Feature -->
        <div class="col-md-8">
            <div class="bento-card" style="background: linear-gradient(135deg, rgba(118, 75, 162, 0.1), rgba(102, 126, 234, 0.1));">
                <div class="row align-items-center h-100">
                    <div class="col-sm-7">
                        <h4 class="fw-bold mb-3">Real-time Insights</h4>
                        <p class="text-muted">Our AI tracks registration trends every second. Register now to see your name on the dynamic leaderboard!</p>
                        <span class="badge bg-white text-dark py-2 px-3 rounded-pill shadow-sm">
                                <i class="bi bi-lightning-charge-fill text-warning"></i> Trending Now
                            </span>
                    </div>
                    <div class="col-sm-5 text-center d-none d-sm-block">
                        <i class="bi bi-graph-up-arrow display-1 text-primary opacity-25"></i>
                    </div>
                </div>
            </div>
        </div>

        <!-- Preview Card -->
        <div class="col-md-6">
            <div class="bento-card">
                <div class="d-flex align-items-center mb-3">
                    <div class="icon-box me-3 mb-0"><i class="bi bi-magic"></i></div>
                    <h5 class="fw-bold m-0">What's New?</h5>
                </div>
                <p class="text-muted">Just added: 25+ Interactive modules for advanced dynamic content management.</p>
                <hr>
                <a href="register.jsp" class="text-decoration-none fw-600" style="color: var(--accent-color);">Learn More <i class="bi bi-arrow-right"></i></a>
            </div>
        </div>

        <!-- Login Prompt -->
        <div class="col-md-6">
            <div class="bento-card d-flex flex-column justify-content-center align-items-center text-center">
                <h5 class="fw-bold">Welcome Back?</h5>
                <p class="text-muted">Pick up exactly where you left off.</p>
                <a href="login.jsp" class="btn btn-outline-dark px-5 rounded-pill">Log In to Account</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>