package User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import web.utils.DBUtils;

public class UserDAO {
    public UserDTO login(String fullName, String password) throws ClassNotFoundException {
        UserDTO user = null;
        String sql = "SELECT * FROM [User] ";
                sql +=  "WHERE FullName = ? AND Password = ?";

        try (Connection con = DBUtils.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, fullName);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    user = new UserDTO();
                    user.setUserID(rs.getInt("UserID"));
                    user.setFullName(rs.getString("FullName"));
                    user.setEmail(rs.getString("Email"));
                    user.setRole(rs.getString("Role"));
                }
            }
        } catch (SQLException ex) {
            System.out.println("Error in login. Details: " + ex.getMessage());
            ex.printStackTrace();
        }
        return user;
    }
    
}
