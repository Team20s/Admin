package web.component;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.climinal.CriminalBiz;
import com.vo.Criminal;
import com.vo.Product;

/**
 * Servlet implementation class CliminalServlet
 */
@WebServlet({ "/CliminalServlet", "/climinal" })
public class CriminalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CriminalBiz<Criminal, String> biz;

    public CriminalServlet() {
        super();
        biz = new CriminalBiz<>();
    }

    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Criminal> list = null;
		String cmd = request.getParameter("cmd");
		//[ { data:[] } ]
		JSONArray ja = null;//json�迭
		JSONObject jo = null;//json ��ü
		JSONArray ija = null;//���� ������ ��� ������ json �迭 
		JSONArray jja = null;
		
		if(cmd.equals("apart")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getApart());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("pc")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getPc());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("toilet")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getToilet());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("parking")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getParking());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("school")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getSchool());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("subway")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getSubway());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(cmd.equals("office")) {
			try {
				list = biz.get();
				
				ja = new JSONArray();
				jo = new JSONObject();
				ija = new JSONArray();
				
				//��񿡼� �� �����͸� �־���
				for(Criminal p : list) {
					jja=new JSONArray();
					jja.add(p.getKind());
					jja.add(p.getOffice());
					ija.add(jja);
				}
				jo.put("type", "pie");
				jo.put("name", "Browser share");
				jo.put("data", ija);
				ja.add(jo);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(ja != null) {			
			//
			response.setContentType("text/json;charset=EUC-KR");
			PrintWriter out = response.getWriter();
			out.print(ja.toJSONString());
		}
	}
}
