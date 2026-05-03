<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard | Dynamic World</title>

  <!-- Bootstrap 5 CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Google Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

  <style>
    :root {
      --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      --glass-bg: rgba(255, 255, 255, 0.9);
    }

    body {
      font-family: 'Inter', sans-serif;
      background-color: #f0f2f5;
      margin: 0;
    }

    /* Sidebar Styling */
    .sidebar {
      height: 100vh;
      width: 260px;
      position: fixed;
      background: #ffffff;
      border-right: 1px solid #e0e0e0;
      padding: 20px;
      z-index: 100;
    }

    .main-content {
      margin-left: 260px;
      padding: 30px;
    }

    /* Dynamic Content Cards */
    .content-card {
      background: white;
      border: none;
      border-radius: 15px;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      overflow: hidden;
    }

    .content-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 20px rgba(0,0,0,0.08);
    }

    .status-badge {
      font-size: 0.75rem;
      padding: 5px 12px;
      border-radius: 20px;
    }

    .navbar-custom {
      background: white;
      padding: 15px 30px;
      border-bottom: 1px solid #e0e0e0;
      margin-left: 260px;
    }

    /* Responsive Sidebar */
    @media (max-width: 768px) {
      .sidebar { width: 0; padding: 0; visibility: hidden; }
      .main-content, .navbar-custom { margin-left: 0; }
    }
  </style>
</head>
<body>

<!-- Sidebar Navigation -->
<div class="sidebar">
  <h4 class="fw-bold mb-4" style="color: #667eea;">Dynamic<span class="text-dark">World</span></h4>
  <ul class="nav flex-column">
    <li class="nav-item mb-2">
      <a href="#" class="nav-link active bg-light rounded text-primary fw-bold">
        <i class="bi bi-speedometer2 me-2"></i> Dashboard
      </a>
    </li>
    <li class="nav-item mb-2">
      <a href="#" class="nav-link text-muted">
        <i class="bi bi-layers me-2"></i> My Contents
      </a>
    </li>
    <li class="nav-item mb-2">
      <a href="#" class="nav-link text-muted">
        <i class="bi bi-graph-up me-2"></i> Analytics
      </a>
    </li>
    <li class="nav-item mt-5">
      <a href="index.jsp" class="nav-link text-danger">
        <i class="bi bi-box-arrow-left me-2"></i> Logout
      </a>
    </li>
  </ul>
</div>

<!-- Top Navbar -->
<nav class="navbar navbar-custom sticky-top">
  <div class="container-fluid">
    <span class="navbar-brand fw-bold text-muted">Welcome back, User!</span>
    <div class="d-flex align-items-center">
      <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center" style="width: 40px; height: 40px;">
        <i class="bi bi-person"></i>
      </div>
    </div>
  </div>
</nav>

<!-- Main Dashboard Area -->
<div class="main-content">
  <div class="row mb-4">
    <div class="col">
      <h2 class="fw-bold">Dynamic Feed</h2>
      <p class="text-muted">Stay updated with the latest trends and data.</p>
    </div>
  </div>

  <!-- Grid of Dynamic Contents -->
  <div class="row g-4">
    <!-- Card 1 -->
    <div class="col-md-4">
      <div class="card content-card h-100 p-3 shadow-sm">
        <div class="d-flex justify-content-between mb-3">
          <span class="badge bg-success-subtle text-success status-badge">Live Now</span>
          <i class="bi bi-three-dots text-muted"></i>
        </div>
        <h5 class="fw-bold">Global Market Trends</h5>
        <p class="text-muted small">Tracking real-time shifts in the dynamic world economy.</p>
        <div class="mt-auto pt-3 border-top d-flex justify-content-between align-items-center">
          <span class="small text-muted"><i class="bi bi-clock me-1"></i> 2m ago</span>
          <button class="btn btn-sm btn-outline-primary rounded-pill">View</button>
        </div>
      </div>
    </div>

    <!-- Card 2 -->
    <div class="col-md-4">
      <div class="card content-card h-100 p-3 shadow-sm">
        <div class="d-flex justify-content-between mb-3">
          <span class="badge bg-primary-subtle text-primary status-badge">Featured</span>
          <i class="bi bi-three-dots text-muted"></i>
        </div>
        <h5 class="fw-bold">AI Innovation Hub</h5>
        <p class="text-muted small">Explore the latest breakthroughs in generative intelligence.</p>
        <div class="mt-auto pt-3 border-top d-flex justify-content-between align-items-center">
          <span class="small text-muted"><i class="bi bi-clock me-1"></i> 1h ago</span>
          <button class="btn btn-sm btn-outline-primary rounded-pill">View</button>
        </div>
      </div>
    </div>

    <!-- Card 3 -->
    <div class="col-md-4">
      <div class="card content-card h-100 p-3 shadow-sm" style="background: var(--primary-gradient);">
        <div class="text-white">
          <h5 class="fw-bold">Go Premium</h5>
          <p class="small opacity-75">Unlock 100+ dynamic content modules today.</p>
          <button class="btn btn-light btn-sm fw-bold mt-2">Upgrade Now</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Second Row (List View) -->
  <div class="row mt-5">
    <div class="col-12">
      <div class="card border-0 shadow-sm p-4 rounded-4">
        <h5 class="fw-bold mb-4">Recent Activity</h5>
        <div class="table-responsive">
          <table class="table table-hover align-middle">
            <thead class="table-light">
            <tr>
              <th>Content Name</th>
              <th>Category</th>
              <th>Date Added</th>
              <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>User Experience Design</td>
              <td>Design</td>
              <td>May 3, 2026</td>
              <td><span class="badge bg-success">Published</span></td>
            </tr>
            <tr>
              <td>Cloud Infrastructure</td>
              <td>Tech</td>
              <td>May 2, 2026</td>
              <td><span class="badge bg-warning">Review</span></td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>