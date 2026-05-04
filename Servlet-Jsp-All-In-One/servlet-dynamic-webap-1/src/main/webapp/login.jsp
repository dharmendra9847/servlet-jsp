<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | Dynamic World</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

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

        .login-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 24px;
            padding: 40px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .form-label { font-weight: 600; color: #444; }

        .form-control {
            border-radius: 12px;
            padding: 12px 15px;
            border: 1px solid #e0e0e0;
            background-color: #f8f9fa;
        }

        .form-control:focus {
            box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.25);
            border-color: #667eea;
        }

        .btn-login {
            background: linear-gradient(to right, #667eea, #764ba2);
            border: none;
            color: white;
            font-weight: 700;
            padding: 14px;
            border-radius: 12px;
            width: 100%;
            margin-top: 10px;
            transition: all 0.3s ease;
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(118, 75, 162, 0.4);
        }

        .modal-content { border-radius: 24px; border: none; }

        .success-circle {
            width: 80px;
            height: 80px;
            background: #d4edda;
            color: #28a745;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 40px;
            margin: 0 auto 20px;
        }
    </style>
</head>
<body>

<div class="login-card">
    <div class="text-center mb-4">
        <div class="d-inline-block p-3 rounded-circle bg-light mb-3">
            <i class="bi bi-shield-lock-fill text-primary" style="font-size: 2rem; color: #667eea !important;"></i>
        </div>
        <h2 class="fw-bold">Welcome Back</h2>
        <p class="text-muted">Enter your credentials to access the world.</p>
    </div>

    <form id="loginForm" action="dynamicworld.jsp" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Your username" required>
        </div>

        <div class="mb-4">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="••••••••" required>
        </div>

        <button type="submit" class="btn btn-login">Login</button>

        <div class="text-center mt-4">
            <small class="text-muted">New here? <a href="registration.jsp" class="text-decoration-none fw-bold" style="color: #667eea;">Create Account</a></small>
        </div>
    </form>
</div>

<!-- Login Success Modal -->
<div class="modal fade" id="loginSuccessModal" tabindex="-1" aria-hidden="true" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content p-4 shadow-lg">
            <div class="modal-body text-center">
                <div class="success-circle">
                    <i class="bi bi-check-lg"></i>
                </div>
                <h3 class="fw-bold">Login Successful!</h3>
                <p class="text-muted">Redirecting you to your dynamic dashboard...</p>
                <button type="button" class="btn btn-dark w-100 py-2 mt-3" style="border-radius: 10px;" onclick="window.location.href='dashboard.jsp'">
                    Enter Dashboard
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Simulate Login Process
    document.getElementById('loginForm').addEventListener('submit', function(e) {
        e.preventDefault();

        // Show success modal
        var successModal = new bootstrap.Modal(document.getElementById('loginSuccessModal'));
        successModal.show();

        // Optional: Auto-redirect after 2 seconds
        // setTimeout(function() { window.location.href = 'dashboard.jsp'; }, 2500);
    });
</script>

</body>
</html>