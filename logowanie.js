document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); 
    
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    
    if (username === "admin" && password === "password") {
      document.getElementById("loginMessage").textContent = "Login successful!";
      // Przekierowanie na inny odnośnik
      window.location.href = "source.html";
    } else {
      document.getElementById("loginMessage").textContent = "Niepoprawna nazwa użytkownika lub hasło";
    }
  });
  