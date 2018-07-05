package web.dispatcher;

import javax.servlet.http.HttpServletRequest;

public class MakeUI {
	public static void build(HttpServletRequest request, String view) {
		
		if(view.equals("register")) {
			request.setAttribute("center", "register");
			request.setAttribute("nav", Navi.register);
		}else if(view.equals("about")) {
			request.setAttribute("center", "about");
			request.setAttribute("nav", Navi.about);
		}else if(view.equals("user/add")) {
			request.setAttribute("center", "user/add");
			request.setAttribute("nav", Navi.userAdd);
		}else if(view.equals("product/add")) {
			request.setAttribute("center", "product/add");
			request.setAttribute("nav", Navi.productAdd);
		}else if(view.equals("registerok")) {
			request.setAttribute("center", "registerok");
			request.setAttribute("nav", Navi.registerok);
		}else if(view.equals("registerfail")) {
			request.setAttribute("center", "registerfail");
			request.setAttribute("nav", Navi.registerfail);
		}else if(view.equals("userlist")) {
			//디스패처로 넘어온 view로 가서 setting
			request.setAttribute("center", "user/list");
			request.setAttribute("nav", Navi.userlist);
		}else if(view.equals("productlist")) {
			request.setAttribute("center", "product/list");
			request.setAttribute("nav", Navi.productlist);
		}else if(view.equals("criminal")) {
			request.setAttribute("center", "criminal");
			request.setAttribute("nav", Navi.productlist);
		}
	}
}
