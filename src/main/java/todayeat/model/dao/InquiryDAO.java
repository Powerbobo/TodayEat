package todayeat.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import todayeat.model.vo.Inquiry;

public class InquiryDAO {

	public int insertInquiry(Connection conn, Inquiry inquiry) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "INSERT INTO INQUIRY_TBL VALUES(SEQ_INQUIRYNO.NEXTVAL,?,?,?,DEFAULT,'미등록')";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, inquiry.getInquirySubject());
			pstmt.setString(2, inquiry.getInquiryContent());
			pstmt.setString(3, inquiry.getInquiryWriter());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	
	
	
}
