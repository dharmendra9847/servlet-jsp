<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Security Check with Cache Prevention
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if (session.getAttribute("userName") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard | World</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-grad: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --sidebar-bg: #1a202c;
            --main-bg: #f7fafc;
            --transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
        }

        body {
            background-color: var(--main-bg);
            font-family: 'Poppins', sans-serif;
            overflow-x: hidden;
        }

        /* Sidebar Pro Styling */
        .sidebar {
            height: 100vh; width: 260px; position: fixed;
            background: var(--sidebar-bg); color: white;
            padding: 30px 20px; z-index: 100;
            box-shadow: 4px 0 15px rgba(0,0,0,0.1);
            animation: slideInLeft 0.8s ease;
        }

        .sidebar-brand {
            font-size: 22px; font-weight: 700;
            margin-bottom: 40px; padding-left: 15px;
            background: var(--primary-grad);
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
        }

        .sidebar a {
            padding: 12px 15px; display: block; color: #a0aec0;
            text-decoration: none; border-radius: 12px;
            margin-bottom: 8px; transition: var(--transition);
        }

        .sidebar a:hover, .sidebar a.active {
            background: rgba(255,255,255,0.05);
            color: white; transform: translateX(5px);
        }

        .sidebar i { margin-right: 12px; font-size: 18px; }

        /* Main Content */
        .main-content { margin-left: 260px; padding: 40px; }

        .welcome-section {
            animation: fadeInDown 0.8s ease;
            margin-bottom: 40px;
        }

        /* Stat Cards */
        .stat-card {
            background: white; padding: 30px; border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.02);
            border: 1px solid #edf2f7;
            transition: var(--transition);
            opacity: 0; transform: translateY(20px);
            animation: fadeInUp 0.6s forwards;
        }

        .stat-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
        }

        /* Staggered Animation Delays */
        .delay-1 { animation-delay: 0.2s; }
        .delay-2 { animation-delay: 0.4s; }
        .delay-3 { animation-delay: 0.6s; }

        .icon-circle {
            width: 60px; height: 60px; border-radius: 15px;
            display: flex; align-items: center; justify-content: center;
            margin: 0 auto 20px; font-size: 24px;
            background: #f3f0ff; color: #764ba2;
        }

        /* Activity Table */
        .table-container {
            background: white; border-radius: 20px; padding: 25px;
            margin-top: 30px; border: 1px solid #edf2f7;
            animation: fadeInUp 0.8s forwards; animation-delay: 0.8s;
            opacity: 0;
        }

        .table thead th { border: none; color: #718096; text-transform: uppercase; font-size: 12px; letter-spacing: 1px; }
        .status-pill { padding: 6px 12px; border-radius: 8px; font-size: 12px; font-weight: 600; }

        /* Animations */
        @keyframes slideInLeft { from { transform: translateX(-100%); } to { transform: translateX(0); } }
        @keyframes fadeInUp { from { opacity: 0; transform: translateY(30px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes fadeInDown { from { opacity: 0; transform: translateY(-20px); } to { opacity: 1; transform: translateY(0); } }

        @media (max-width: 768px) {
            .sidebar { width: 70px; padding: 20px 10px; }
            .sidebar span, .sidebar-brand { display: none; }
            .main-content { margin-left: 70px; }
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="sidebar-brand">Dynamic UI</div>
    <a href="#" class="active"><i class="bi bi-grid-1x2-fill"></i> <span>Dashboard</span></a>
    <a href="#"><i class="bi bi-person-circle"></i> <span>My Profile</span></a>
    <a href="#"><i class="bi bi-bar-chart-line"></i> <span>Analytics</span></a>
    <a href="#"><i class="bi bi-gear"></i> <span>Settings</span></a>

    <div style="position: absolute; bottom: 30px; width: 85%;">
        <hr style="border-color: rgba(255,255,255,0.1);">
        <a href="logout" style="color: #fc8181;">
            <i class="bi bi-box-arrow-right"></i> <span>Logout</span>
        </a>
    </div>
</div>

<!-- Main Content -->
<div class="main-content">
    <div class="welcome-section">
        <h2 style="font-weight: 700; color: #2d3748;">
            Hello, <%= session.getAttribute("userName") %> ✨
        </h2>
        <p style="color: #718096; font-size: 16px;">Welcome to your workspace dashboard.</p>
    </div>

    <div class="row">
        <!-- Card 1 -->
        <div class="col-md-4">
            <div class="stat-card delay-1">
                <div class="icon-circle" style="background: #eef2ff; color: #6366f1;">
                    <i class="bi bi-lightning-charge"></i>
                </div>
                <h4 style="color: #718096; font-size: 14px; font-weight: 500;">Active Projects</h4>
                <h2 style="font-weight: 700; margin: 5px 0;">12</h2>
                <p style="color: #48bb78; font-size: 12px; margin: 0;">+2 since last week</p>
            </div>
        </div>
        <!-- Card 2 -->
        <div class="col-md-4">
            <div class="stat-card delay-2">
                <div class="icon-circle" style="background: #fff5f5; color: #f56565;">
                    <i class="bi bi-graph-up"></i>
                </div>
                <h4 style="color: #718096; font-size: 14px; font-weight: 500;">System Reach</h4>
                <h2 style="font-weight: 700; margin: 5px 0;">84.2%</h2>
                <p style="color: #48bb78; font-size: 12px; margin: 0;">Performance: Optimal</p>
            </div>
        </div>
        <!-- Card 3 -->
        <div class="col-md-4">
            <div class="stat-card delay-3">
                <div class="icon-circle" style="background: #f0fff4; color: #48bb78;">
                    <i class="bi bi-envelope-paper"></i>
                </div>
                <h4 style="color: #718096; font-size: 14px; font-weight: 500;">Pending Task</h4>
                <h2 style="font-weight: 700; margin: 5px 0;">05</h2>
                <p style="color: #718096; font-size: 12px; margin: 0;">Next sync in 2 hours</p>
            </div>
        </div>
    </div>

    <!-- Table Section -->
    <div class="table-container">
        <h4 style="font-weight: 600; margin-bottom: 25px;">Recent Activities</h4>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Activity</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <tr style="transition: 0.3s;">
                <td><i class="bi bi-shield-check" style="color: #6366f1; margin-right: 10px;"></i> Secure Login</td>
                <td>May 4, 2026</td>
                <td><span class="status-pill label-success" style="background: #c6f6d5; color: #22543d;">Completed</span></td>
            </tr>
            <tr style="transition: 0.3s;">
                <td><i class="bi bi-pencil-square" style="color: #6366f1; margin-right: 10px;"></i> Profile Metadata Updated</td>
                <td>May 3, 2026</td>
                <td><span class="status-pill label-info" style="background: #bee3f8; color: #2a4365;">Updated</span></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>