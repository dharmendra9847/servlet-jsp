<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- DIRECTIVE TAG: Importing necessary classes --%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servlet JSP App</title>
    <style>
        body { font-family: sans-serif; text-align: center; padding: 50px; background: #f4f4f9; }
        .card { background: white; padding: 20px; border-radius: 10px; shadow: 0 4px 8px rgba(0,0,0,0.1); }
        h1 { color: #764ba2; }
    </style>
</head>
<body>

<div class="card">
    <h2>Servlet JSP App</h2>

    <%-- DECLARATIVE TAG: Class-level variables --%>
    <%!
        int a = 20;
        int b = 30;
    %>

    <%-- SCRIPTLET TAG: Code executed on every request --%>
    <%
        Date date = new Date();
        int currentSum = a + b; // Calculated every time page loads
    %>

    <%-- EXPRESSION TAG: Outputting data to the UI --%>
    <p>Current Server Time:</p>
    <h1><%= date %></h1>

    <p>The calculation of <%= a %> + <%= b %> is:</p>
    <h1><%= currentSum %></h1>
</div>

</body>
</html>