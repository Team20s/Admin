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
		
		try {
			list = biz.get();
			//[ { data:[] } ]
			JSONArray ja = new JSONArray();//json�迭
			JSONObject jo = new JSONObject();//json ��ü
			JSONArray ija = new JSONArray();//���� ������ ��� ������ json �迭 
			JSONArray jja = null;
			
			//��񿡼� �� �����͸� �־���
			for(Criminal p : list) {
				jja=new JSONArray();
				jja.add(p.getKind());
				jja.add(p.getApart());
				ija.add(jja);
			}
			System.out.println(ija);
			jo.put("type", "pie");
			jo.put("name", "Browser share");
			jo.put("data", ija);
			ja.add(jo);
			
			//
			response.setContentType("text/json;charset=EUC-KR");
			PrintWriter out = response.getWriter();
			out.print(ja.toJSONString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
