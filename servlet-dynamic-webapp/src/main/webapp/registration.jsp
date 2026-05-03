<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Join Us | Registration</title>

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

    .reg-card {
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(10px);
      border-radius: 24px;
      padding: 40px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
      width: 100%;
      max-width: 450px;
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
      background-color: #fff;
    }

    .btn-signup {
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

    .btn-signup:hover {
      transform: translateY(-2px);
      box-shadow: 0 5px 15px rgba(118, 75, 162, 0.4);
      opacity: 0.9;
    }

    /* Success Modal Styling */
    .modal-content {
      border-radius: 20px;
      border: none;
      text-align: center;
      padding: 20px;
    }
    .success-icon {
      font-size: 50px;
      color: #28a745;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>

<div class="reg-card">
  <h2 class="text-center fw-bold mb-2">Create Account</h2>
  <p class="text-center text-muted mb-4">Join our dynamic community today.</p>

  <!-- Note: action is set to '#' for demonstration so the modal can trigger -->
  <form id="registrationForm" action="/hello-servlet" method="post">
    <div class="mb-3">
      <label for="username" class="form-label">Username</label>
      <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
    </div>

    <div class="mb-4">
      <label for="city" class="form-label">User City</label>
      <input type="text" class="form-control" id="city" name="city" placeholder="Where do you live?" required>
    </div>

    <button type="submit" class="btn btn-signup">Sign Up</button>

    <div class="text-center mt-4">
      <small class="text-muted">Already have an account? <a href="login.jsp" class="text-decoration-none" style="color: #667eea;">Log in</a></small>
    </div>
  </form>
</div>

<!-- Success Modal -->
<div class="modal fade" id="successModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content shadow">
      <div class="modal-body">
        <div class="success-icon">✓</div>
        <h3 class="fw-bold">Success!</h3>
        <p class="text-muted">Your account has been created successfully. Welcome to the Dynamic World!</p>
        <button type="button" class="btn btn-primary px-5" style="border-radius: 10px; background: #667eea;" data-bs-dismiss="modal" onclick="window.location.href='index.jsp'">Great!</button>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
  // This script intercepts the form for the demo.
  // In a real JSP app, you would likely trigger this based on a request attribute
  // passed back from your Servlet (e.g., if (request.getAttribute("status") == "success"))

  // document.getElementById('registrationForm').addEventListener('submit', function(event) {
  //   event.preventDefault(); // Stop page reload for demo
  //
  //   // Show the Bootstrap Modal
  //   var myModal = new bootstrap.Modal(document.getElementById('successModal'));
  //   myModal.show();
  // });
  const urlParams = new URLSearchParams(window.location.search);
  if (urlParams.get('status') === 'success') {
    const myModal = new bootstrap.Modal(document.getElementById('successModal'));
    myModal.show();
  }
</script>

</body>
</html>