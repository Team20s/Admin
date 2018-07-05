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
			JSONArray ja = new JSONArray();//json배열
			JSONObject jo = new JSONObject();//json 객체
			JSONArray ija = new JSONArray();//범죄 종류와 통계 데이터 json 배열 
			JSONArray jja = null;
			
			//디비에서 뺀 데이터를 넣어줌
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
