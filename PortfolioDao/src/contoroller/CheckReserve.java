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
 * Servlet implementation class CheckReserve
 */
@WebServlet("/CheckReserve")
public class CheckReserve extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckReserve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/view/checkReserve.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail =request.getParameter("mail");
		try {
			ReserveDao reserveDao = DaoFactory.createReserveDao();
			List<Reserve>reserveList = reserveDao.findInfomation(mail);
			request.setAttribute("reserveList",reserveList);
			request.getRequestDispatcher("WEB-INF/view/checkReserve2.jsp").forward(request, response);
		} catch(Exception e) {
			throw new ServletException(e);
		}


	}

}
