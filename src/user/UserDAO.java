package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:8080/BBS";
			String dbID = "root";
			String dbPassword = "kudo0612";
			Class.forName("com.mysql.jdbc.Drvier");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELRCT userPassword FORM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs  = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //ログイン成功
				}
				else
					return 0; //PWが違います
			}
			return -1; // ID無し
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //DBエラー
	}
}

