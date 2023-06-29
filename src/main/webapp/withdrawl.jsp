<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Amount Withdrawal Form</title>
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
    float: left;
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
      var form = document.getElementById('withdrawal-form');
      form.addEventListener('submit', function(event) {
        event.preventDefault();
        var netAmount = parseFloat(document.getElementById('net-amount').value);
        var withdrawalAmount = parseFloat(document.getElementById('amount').value);
        
        var errorContainer = document.getElementById('error-container');
        var errorMessage = document.getElementById('error-message');
        
        if (withdrawalAmount <= 0 || isNaN(withdrawalAmount)) {
          errorContainer.style.display = 'block';
          errorMessage.innerText = 'Please enter a valid withdrawal amount.';
          return;
        }
        
        if (withdrawalAmount > netAmount) {
          errorContainer.style.display = 'block';
          errorMessage.innerText = 'Withdrawal amount cannot exceed the net amount.';
          return;
        }
        
        // Form is valid, you can proceed with submitting the form
        form.submit();
      });
    };
  </script>

</head>
<body>
<h2 align="center">Amount Withdrawal Form</h2>
  <div class="container">
    
    <form id="withdrawal-form">
      <div class="form-group">
        <label for="account">Account Number:</label>
        <input type="text" id="account" name="account" readonly="readonly" value="<%= request.getAttribute("address") %>">
      </div>
      <div class="form-group">
        <label for="net-amount">Net Amount:</label>
        <input type="number" id="net-amount" name="net-amount"  readonly="readonly" value="<%= request.getAttribute("address") %>">
      </div>
      <div class="form-group">
        <label for="amount">Withdrawal Amount:</label>
        <input type="number" id="amount" name="amount" min="0" placeholder="Enter the withdrawal amount" required>
      </div>
      <div id="error-container">
        <p id="error-message" class="error-message"></p>
      </div>
      <div class="form-group">
        <button type="submit">Withdraw</button>
      </div>
       </form>
  </div>

</body>
</html>