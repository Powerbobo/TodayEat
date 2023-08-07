package todayeat.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	// 문의글 전체 조회
	public List<Inquiry> selectInquiryList(Connection conn, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Inquiry> iList = null;
//		String query = "SELECT * FROM INQUIRY_TBL";
		String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY INQUIRY_NO DESC) ROW_NUM, INQUIRY_TBL.* FROM INQUIRY_TBL)WHERE ROW_NUM BETWEEN ? AND ?";
		int recordCountPerPage = 10;
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			iList = new ArrayList<Inquiry>();
			// 후처리
			while(rset.next()) {
				Inquiry inquiry = rsetToInquiry(rset);
				iList.add(inquiry);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return iList;
	}
	// 페이징 메소드
	public String generatePageNavi(int currentPage) {
		int totalCount = 11;			// 전체 게시물 개수
		int recordCountPerPage = 10;	// 한 페이지당 보여질 게시물의 개수
		int naviTotalCount = 0;			// 범위의 총 개수
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		} else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		int naviCountPerPage = 10;	// 한 페이지 범위에 보여질 페이지의 개수
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		// 이전/다음 페이지 여부
		boolean needPrev = true;
		boolean needNext = true;
		if(startNavi == 1) {
			needPrev = false;
		}
		if(endNavi == naviTotalCount) {
			needNext = false;
		}
		StringBuilder result = new StringBuilder();
		if(needPrev) {
			result.append("<a href='/notice/list.do?currentPage="+(startNavi-1)+"'>[이전]</a> ");
		}
		for(int i = startNavi; i<= endNavi; i++) {
			result.append("<a href='/notice/list.do?currentPage="+i+"'>"+i+"</a>&nbsp;&nbsp;");
		}
		if(needNext) {
			result.append("<a href='/notice/list.do?currentPage="+(endNavi+1)+"'>[다음]</a> ");
		}
		return result.toString();
	}
	// 데이터 상세 조회
	public Inquiry selectOneByNo(Connection conn, int inquiryNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Inquiry inquiry = null;
		String query = "SELECT * FROM INQUIRY_TBL WHERE INQUIRY_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, inquiryNo);
			rset = pstmt.executeQuery();
			// 후처리
			if(rset.next()) {
				inquiry = rsetToInquiry(rset);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rset.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return inquiry;
	}
	// 데이터 수정
	public int updateInquiry(Connection conn, Inquiry inquiry) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "UPDATE INQUIRY_TBL SET INQUIRY_SUBJECT = ?, INQUIRY_CONTENT = ? WHERE INQUIRY_NO = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, inquiry.getInquirySubject());
			pstmt.setString(2, inquiry.getInquiryContent());
			pstmt.setInt(3, inquiry.getInquiryNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
	// 데이터 삭제
	public int deleteInquiry(Connection conn, int inquiryNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM INQUIRY_TBL WHERE INQUIRY_NO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, inquiryNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	// 후처리
	private Inquiry rsetToInquiry(ResultSet rset) throws SQLException {
		Inquiry inquiry = new Inquiry();
		inquiry.setInquiryNo(rset.getInt("INQUIRY_NO"));
		inquiry.setInquirySubject(rset.getString("INQUIRY_SUBJECT"));
		inquiry.setInquiryContent(rset.getString("INQUIRY_CONTENT"));
		inquiry.setInquiryWriter(rset.getString("INQUIRY_WRITER"));
		inquiry.setInquiryDate(rset.getDate("INQUIRY_DATE"));
		inquiry.setInquiryYN(rset.getString("INQUIRY_YN"));
		return inquiry;
	}





	
	
	
}
