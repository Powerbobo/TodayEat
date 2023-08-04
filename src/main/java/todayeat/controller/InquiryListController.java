package todayeat.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todayeat.model.service.InquiryService;
import todayeat.model.vo.Inquiry;
import todayeat.model.vo.PageData;

/**
 * Servlet implementation class InquiryController
 */
@WebServlet("/inquiry/list.do")
public class InquiryListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiryListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InquiryService service = new InquiryService();
		String page = request.getParameter("currentPage") != null ? request.getParameter("currentPage") : "1";
		int currentPage = Integer.parseInt(page);
//		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		PageData pd = service.selectInquiryList(currentPage);
		List<Inquiry> iList = pd.getiList();
		request.setAttribute("iList", iList);
		request.setAttribute("pageNavi", pd.getPageNavi());
		request.getRequestDispatcher("/WEB-INF/views/inquiry/list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
