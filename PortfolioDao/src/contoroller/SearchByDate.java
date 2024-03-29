package contoroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.ReserveDao;
import domain.Reserve;

/**
 * Servlet implementation class SearchByDate
 */
@WebServlet("/SearchByDate")
public class SearchByDate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchByDate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String date = request.getParameter("date");
		request.setAttribute("date", date);
		try {
			ReserveDao reserveDao = DaoFactory.createReserveDao();
			List<Reserve> reserveList = reserveDao.findByDate(date);
			request.setAttribute("reserveList",reserveList);
			request.getRequestDispatcher("/WEB-INF/view/searchByDate.jsp").forward(request, response);
		} catch(Exception e) {
			throw new ServletException(e);

	}
	}
}

