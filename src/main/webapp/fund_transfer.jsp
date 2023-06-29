<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Fund Transfer Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    
    h1 {
      text-align: center;
    }
    
 .form-container {
      max-width: 400px;
      margin: 0 auto;
      padding: 50px;
      background-color: #fcbc77;
      border-radius: 30px;
    }
 
    .form-group {
      margin-bottom: 10px;
    }
    
    .form-group label {
      display: inline;
      font-weight: bold;
      margin-bottom: 10px;
    }
    
    .form-group input {
      width: 90%;
      padding: 10px;
      font-size: 16px;
      border: 4px solid #ccc;
      border-radius: 4px;
    }
    
    .form-group input[type="submit"] {
    padding: 10px;
     width: 40%;
      background-color: #4CAF50;
      border: 4px solid #c78300;
      color: #fff;
      cursor: pointer;
    }
    
    .form-group input[type="submit"]:hover {
      background-color: #45a049;
    }
    div.ex1 {
  direction: rtl;
}
  </style>

</head>
<body>
<h1>Fund Transfer</h1>
  <div class="form-container">
    <form action="process_transfer" method="post">
    <div class="ex1"> Net_Balance : &#8377 <%= request.getAttribute("user_id") %>
    </div>
    <h2>From :</h2>
    <div class="form-group">
        <label for="user_id">Account number</label>
        <input type="text" id="user_id" name="user_id" readonly="readonly" value="<%= request.getAttribute("user_id") %>">
      </div>
    
       <h2>To : </h2>
      <div class="form-group">
        <label for="user_id">Recipient's Account Number:</label>
        <input type="text" id="user_id" name="user_id" required>
      </div>
       
       <div class="form-group">
        <label for="account_name">Recipient's Name:</label>
        <input type="text" id="name" name="name" required>
      </div>
      
      <div class="form-group">
        <label for="amount">Amount to Transfer:</label>
        <input type="number" id="amount" name="amount" min="0" required>
      </div>
      
      <div class="form-group">
        <input type="submit" value="Transfer">
      </div>
    </form>
  </div>

</body>
</html>