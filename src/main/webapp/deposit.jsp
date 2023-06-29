<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Amount Form</title>
  <style>
    /* CSS styles for the form */
    body {
      font-family: Arial, sans-serif;
    }
    
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #f2f2f2;
      border-radius: 5px;
    }
    
    .container h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    
    .form-group {
      margin-bottom: 15px;
    }
    
    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    
    .form-group input[type="text"],
    .form-group input[type="number"] {
      width: 100%;
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }
    
    .form-group button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    
    .form-group button:hover {
      background-color: #45a049;
    }
    
    .error-message {
      color: red;
      margin-top: 5px;
    }
  </style>
  <script>
    // JavaScript for form validation
    window.onload = function() {
      var form = document.getElementById('deposit-form');
      form.addEventListener('submit', function(event) {
        event.preventDefault();
        var depositAmount = parseFloat(document.getElementById('net_amount').value);
        
        var errorContainer = document.getElementById('error-container');
        var errorMessage = document.getElementById('error-message');
        
        if (depositAmount <= 0 || isNaN(depositAmount)) {
          errorContainer.style.display = 'block';
          errorMessage.innerText = 'Please enter a valid deposit amount.';
          return;
        }
        
        // Form is valid, you can proceed with submitting the form
        form.submit();
      });
    };
  </script>

</head>
<body>
<div class="container">
    <h2>Deposit Amount Form</h2>
    <form id="deposit-form">
      <div class="form-group">
        <label for="account">Account Number:</label>
        <input type="text" id="account" name="account" readonly="readonly" value="<%= request.getAttribute("account_id") %>" >
      </div>
      <div class="form-group">
        <label for="net_amount">Net Amount:</label>
        <input type="number" id="net_amount" name="net_amount"  readonly="readonly" value="<%= request.getAttribute("net_amount") %>">
      </div>
      <div class="form-group">
        <label for="amount">Deposit Amount:</label>
        <input type="number" id="amount" name="amount" placeholder="Enter the deposit amount" required>
      </div>
      <div id="error-container">
        <p id="error-message" class="error-message"></p>
      </div>
      <div class="form-group">
        <button type="submit">Deposit</button>
      </div>
    </form>
  </div>


</body>
</html>