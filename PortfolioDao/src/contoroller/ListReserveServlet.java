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
 * Servlet implementation class ListReservingServlet
 */
@WebServlet("/listReserve")
public class ListReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListReserveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ReserveDao reserveDao = DaoFactory.createReserveDao();
			List<Reserve> reserveList = reserveDao.findAll();
			request.setAttribute("reserveList", reserveList);
			request.getRequestDispatcher("/WEB-INF/view/listReserve.jsp")
					.forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}



