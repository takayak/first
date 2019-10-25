package contoroller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import dao.DaoFactory;
import dao.ReserveDao;
import domain.Reserve;


/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strId = request.getParameter("id");
		Integer id = Integer.parseInt(strId);

//LIST
//		try {
//			ReserveDao reserveDao = DaoFactory.createReserveDao();
//			List<Reserve> reserveList = reserveDao.findById(id);
//			request.setAttribute("reserveList", reserveList);
//			request.getRequestDispatcher("/WEB-INF/view/editReserve.jsp")
//					.forward(request, response);
//		} catch (Exception e) {
//			throw new ServletException(e);
//		}
//	}

//reserve
		try {
			ReserveDao reserveDao = DaoFactory.createReserveDao();
			Reserve reserve = new Reserve();
			reserve = reserveDao.findById(id);
			request.setAttribute("reserve", reserve);
			request.getRequestDispatcher("/WEB-INF/view/editReserve.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strid = request.getParameter("id");
		Integer id = Integer.parseInt(strid);
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		String address =request.getParameter("address");
		String tel = request.getParameter("tel");
		String date = request.getParameter("date");


		// エラーフラグ
		boolean isError = false;

		request.setAttribute("name",name);
		if(name.isEmpty()) {
			request.setAttribute("nameError","名前が未入力です");
			isError = true;
		}

		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
        Date date2 = null;
		try {
			date2 = sdFormat.parse(date);
		} catch (ParseException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		System.out.println(date);
		// エラーが無ければデータの追加
		 // エラーが有ればフォームの再表示
		if(!isError) {
//		reserveインスタンスにデータの追加
		Reserve reserve = new Reserve();

		reserve.setId(id);
		reserve.setName(name);
		reserve.setAddress(address);
		reserve.setTel(tel);
		reserve.setMail(mail);
		reserve.setDate(date2);
		try {
			ReserveDao reserveDao = DaoFactory.createReserveDao();
			reserveDao.update(reserve);

			// メールの送信
			request.setAttribute("mail", mail);
			SimpleEmail email = new SimpleEmail();
			try {
				email.setHostName("smtp.gmail.com");
				email.setStartTLSEnabled(true);
				email.setSslSmtpPort("465");
				email.setAuthentication("ko001yama@gmail.com","hunter1991");
				email.setFrom("ko001yama@gmail.com","送信小山","ISO-2022-JP");
				email.addTo(mail,"受信太郎","ISO-2022-JP");
				email.setCharset("ISO-2022-JP");
				email.setSubject("予約内容の変更を承りました。");
				email.setMsg("予約を承りました");
				email.send();
			}catch(EmailException e) {
				throw new ServletException(e);
			}

			request.getRequestDispatcher("/WEB-INF/view/addReserveDone.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
		} else {
//			フォームの再表示
			request.getRequestDispatcher("WEB-INF/view/addReserve.jsp").forward(request, response);
		}
	}



	}
