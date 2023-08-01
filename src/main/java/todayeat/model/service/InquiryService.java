package todayeat.model.service;

import java.sql.*;

import todayeat.common.JDBCTemplate;
import todayeat.model.dao.InquiryDAO;
import todayeat.model.vo.Inquiry;

public class InquiryService {
	// 데이터 INSERT
	public int insertInquiry(Inquiry inquiry) {
		JDBCTemplate jdbcTemplate = JDBCTemplate.getInstance();
		Connection conn = jdbcTemplate.createConnection();
		InquiryDAO iDao = new InquiryDAO();
		int result = iDao.insertInquiry(conn, inquiry);
		if(result > 0) {
			// 성공시 커밋
			jdbcTemplate.commit(conn);
		} else {
			// 실패시 롤백
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}
	
	

}
