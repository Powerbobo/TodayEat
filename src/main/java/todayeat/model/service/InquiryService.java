package todayeat.model.service;

import java.sql.*;
import java.util.List;

import todayeat.common.JDBCTemplate;
import todayeat.model.dao.InquiryDAO;
import todayeat.model.vo.Inquiry;
import todayeat.model.vo.PageData;

public class InquiryService {
	private InquiryDAO iDao;
	private JDBCTemplate jdbcTemplate;
	
	public InquiryService() {
		iDao = new InquiryDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}
	
	// 데이터 INSERT
	public int insertInquiry(Inquiry inquiry) {
		Connection conn = jdbcTemplate.createConnection();
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
	// 전체 문의글
	public PageData selectInquiryList(int currentPage) {
		Connection conn = jdbcTemplate.createConnection();
		List<Inquiry> iList = iDao.selectInquiryList(conn, currentPage);
		String pageNavi = iDao.generatePageNavi(currentPage);
		// List, String 두 데이터 값 전부 보내는 방법
		// 1. Map 이용
		// 2. VO 클래스 이용
		PageData pd = new PageData(iList, pageNavi);
		jdbcTemplate.close(conn);
		return pd;
	}
	// 상세 조회
	public Inquiry selectOneByNo(int inquiryNo) {
		Connection conn = jdbcTemplate.createConnection();
		Inquiry inquiry = iDao.selectOneByNo(conn, inquiryNo);
		jdbcTemplate.close(conn);
		return inquiry;
	}
	// 문의 삭제
	public int deleteInquiry(int inquiryNo) {
		Connection conn = jdbcTemplate.createConnection();
		int result = iDao.deleteInquiry(conn, inquiryNo);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		} else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}
	
	

}
