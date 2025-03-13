<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration Form</title>
    <link rel="stylesheet" href="register.css">
</head>
<body>
    <!-- Logo trên đầu form -->
    <div class="logo-lazymoive">
        <img src="image/1.jpg" alt="Logo" width="100px">
        
    </div>

    <div class="form-container">
        <h2>Thông Tin Người Dùng</h2>
        <form action="#" method="post">
            <div class="form-group">
                <label for="first-name">First Name:</label>
                <input type="text" id="first-name" name="first-name" required>
            </div>

            <div class="form-group">
                <label for="last-name">Last Name:</label>
                <input type="text" id="last-name" name="last-name" required>
            </div>

            <div class="form-group">
                <label for="username">Tên Đăng Nhập:</label>
                <input type="text" id="username" name="username" required>
            </div>

            <div class="form-group">
                <label for="password">Mật Khẩu:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="phone">Số Điện Thoại:</label>
                <input type="tel" id="phone" name="phone" pattern="[0-9]{10}" placeholder="0123456789" required>
            </div>

            <div class="form-group">
                <label for="membership">Gói Membership:</label>
                <select id="membership" name="membership" required>
                    <option value="">-- Chọn Gói --</option>
                    <option value="standard">Standard</option>
                    <option value="premium">Premium</option>
                </select>
            </div>

            <button type="submit">Đăng Ký</button>
        </form>
    </div>
</body>
</html>