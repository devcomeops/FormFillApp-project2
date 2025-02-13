<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    
    <!-- External CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        .login-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .login-container:hover {
            transform: scale(1.05);
        }

        h2 {
            color: #333;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s ease-in-out;
        }

        .input-field:focus {
            border-color: #2575fc;
        }

        .submit-btn {
            background-color: #2575fc;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #6a11cb;
        }

        .error {
            color: red;
            font-size: 14px;
        }

        .success {
            color: green;
            font-size: 14px;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Login</h2>
        
        <!-- Login Form -->
        <form action="login.jsp" method="post">
            <input type="text" name="username" class="input-field" placeholder="Enter Username" required><br>
            <input type="password" name="password" class="input-field" placeholder="Enter Password" required><br>
            <button type="submit" class="submit-btn">Login</button>
        </form>

        <!-- Error/Success Message Display -->
        <div id="message"></div>
    </div>

    <!-- Optional JavaScript for effects -->
    <script>
        // Example: Add dynamic effects or alert messages
        const form = document.querySelector("form");

        form.addEventListener("submit", function (e) {
            const username = document.querySelector('input[name="username"]').value;
            const password = document.querySelector('input[name="password"]').value;

            // Example validation check (you can add more complex logic)
            if (username === "" || password === "") {
                e.preventDefault();  // Prevent form submission
                document.getElementById('message').innerHTML = "<p class='error'>Please fill in both fields!</p>";
            } else {
                document.getElementById('message').innerHTML = "<p class='success'>Form submitted successfully!</p>";
            }
        });
    </script>

</body>
</html>

