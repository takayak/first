package contoroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import dao.AdminDao;
import dao.DaoFactory;
import domain.Admin;

/**
 * Servlet implementation class AddAdminServlet
 */
@WebServlet("/AddAdminServlet")
public class AddAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			request.getRequestDispatcher("/WEB-INF/view/addAdmin.jsp").forward(request,response);
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginId = request.getParameter("loginId");
		String loginPass2 = request.getParameter("loginPass");
		String loginPass= BCrypt.hashpw(loginPass2, BCrypt.gensalt());
		Admin admin = new Admin();
		admin.setLoginId(loginId);
		admin.setLoginPass(loginPass);

		try {
			AdminDao adminDao = DaoFactory.createAdminDao();
			adminDao.insert(admin);

		} catch(Exception e) {
			throw new ServletException(e);
		}
		request.getRequestDispatcher("/WEB-INF/view/addAdminDone.jsp").forward(request, response);
	}

}
