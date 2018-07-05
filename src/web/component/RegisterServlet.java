package web.component;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.UserBiz;
import com.vo.User;

import web.dispatcher.Navi;
import web.dispatcher.Util;
/**
 * 
 * 
 *
 */
@WebServlet({ "/RegisterServlet", "/register" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserBiz< User, String> biz;
	public RegisterServlet() {
        super();
        biz = new UserBiz<>();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		name = Util.convertKr(name); //한글 깨짐현상 
		
		User user = new User(id, pwd, name);
		try {
			biz.register(user); 
			//OK
			request.setAttribute("rid", id);
			RequestDispatcher rd  = request.getRequestDispatcher("main.cacao?page=registerok");
			rd.forward(request, response);
			
		} catch (Exception e) {
			//Fail
			response.sendRedirect("main.cacao?page=registerfail"); //sendredirect()다음으로 이동
			e.printStackTrace(); 
			
		}
	}

}




