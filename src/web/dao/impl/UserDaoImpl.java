package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import web.dao.face.UserDao;
import web.dbutil.JDBCTemplate;
import web.dto.User;

public class UserDaoImpl implements UserDao {

	@Override
	public User selectUserByUserid(User user) {
		
		Connection conn = JDBCTemplate.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		User result = null;
		
		String sql = "SELECT * FROM USERS WHERE USERS_ID = ?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserId());
			
			rs = ps.executeQuery();
			
			while( rs.next() ) {
				result = new User();
				result.setUserNo( rs.getInt("USERS_NO"));	
				result.setUserId( rs.getString("USERS_ID")); 
				result.setUserPw( rs.getString("USERS_PW"));
				result.setUserName( rs.getString("USERS_NAME"));
				result.setUserNick( rs.getString("USERS_NICK"));
				result.setUserBirth( rs.getDate("USERS_BIRTH"));
				result.setUserGender( rs.getString("USERS_GENDER"));
				result.setUserEmail( rs.getString("USERS_EMAIL"));
				result.setUserTel( rs.getInt("USERS_TEL"));
				result.setUserDate( rs.getDate("USERS_DATE"));
				result.setUserCnt( rs.getInt("USERS_CNT"));
				result.setUserAuth( rs.getInt("USERS_AUTH"));
				result.setUserGrade( rs.getInt("USERS_GRADE"));
				result.setUserReport( rs.getString("USERS_REPORT"));
				result.setFranNo( rs.getInt("FRAN_NO"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
			JDBCTemplate.close(rs);
		}
		
		return result;
	}

	@Override
	public int selectUserCntByIdPw(User user) {
	
		Connection conn = JDBCTemplate.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int cnt = -1;
		
		String sql = "SELECT COUNT(*) FROM USERS WHERE USERS_ID = ? AND USERS_PW = ?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserId());
			ps.setString(2, user.getUserPw());
			
			rs = ps.executeQuery();
			
			while( rs.next() ) {
				cnt = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
			JDBCTemplate.close(rs);
		}

		return cnt;
	}

}