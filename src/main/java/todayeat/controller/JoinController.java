package todayeat.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Formatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todayeat.model.service.MemberService;
import todayeat.model.vo.Member;

/**
 * Servlet implementation class JoinController
 */
@WebServlet("/member/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String memberId = request.getParameter("joinId");
		String memberPw = request.getParameter("joinPW");
		String memberPwRe = request.getParameter("joinPwRe");
		String memberName = request.getParameter("joinName");
		String memberPhone = request.getParameter("joinPhone");
		String memberEmail = request.getParameter("joinEmail");
		String memberAddress = request.getParameter("joinAddr");
		String memberGender = request.getParameter("gender");
		Date memberBirthday =  Date.valueOf(request.getParameter("joinBir"));
		
		Member member = new Member(memberId, memberPw, memberPwRe, memberName, memberPhone, memberEmail, memberAddress, memberGender, memberBirthday);
		MemberService service = new MemberService();
		int result = service.insertMember(member);
		if(result > 0) {
			// 성공 -> 로그인 화면으로 이동
			request.getRequestDispatcher("/WEB-INF/views/member/join.jsp")
			.forward(request, response);
		} else {
			// 실패 -> 실패 alert 창 띄우기
//			response.send
		}
	}

}
