package com.atg.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.atg.Inbody.biz.InbodyBiz;
import com.atg.Inbody.biz.InbodyBizImpl;
import com.atg.Inbody.dto.InbodyDto;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import oracle.sql.DATE;

/**
 * Servlet implementation class InbodyController
 */
@WebServlet("/InbodyController")
public class InbodyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InbodyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    InbodyBiz biz = new InbodyBizImpl();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		
		InbodyBiz biz = new InbodyBizImpl();
		
		if(command.equals("inbody")) {
			int mb_no = Integer.parseInt(request.getParameter("mb_no"));
			System.out.println(mb_no);
			System.out.println(command);
			List<InbodyDto> list = biz.selectList(mb_no);
			
			JSONObject data = new JSONObject();
			JSONObject data1 = new JSONObject();
			
			JSONArray jArrayCols = new JSONArray();
			JSONArray jArrayRows = new JSONArray();
			
			JSONObject obj = new JSONObject();
			
			obj.put("id", "");
			obj.put("label", "weight");
			obj.put("pattern", "");
			obj.put("type", "number");
			
			JSONObject obj2 = new JSONObject();
			obj2.put("id", "");
			obj2.put("label", "bmi");
			obj2.put("pattern", "");
			obj2.put("type", "number");
			
			JSONObject obj3 = new JSONObject();
			obj3.put("id", "");
			obj3.put("label", "ib_date");
			obj3.put("pattern", "");
			obj3.put("type", "Date");
			
			jArrayCols.add(obj);
			jArrayCols.add(obj2);
			jArrayCols.add(obj3);
			
			//String str1 = jArrayCols.toJSONString();
			//System.out.println(str1);
			//StringBuffer test = new StringBuffer();
			for(InbodyDto dto : list) {
				JSONObject jobj = new JSONObject();
				JSONObject jobj2 = new JSONObject();
				JSONObject jobj3 = new JSONObject();
				//String weight = Integer.toString(dto.getWeight());
				//String bmi = Double.toString(dto.getBmi());
				
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String date = transFormat.format(dto.getIb_date());
				String[] dateType = date.split(" ");
							
				
				//Date ib_date = new Date(dateType[0], dateType[1], dataTest[0], '0');
				
				
				jobj.put("v", dto.getWeight());
				jobj.put("f", null);
				
				jobj2.put("v", dto.getBmi());
				jobj2.put("f", null);

			
				jobj3.put("v", dateType[0]);
				jobj3.put("f", null);
				
				
				JSONArray cArray = new JSONArray();
		
				cArray.add(jobj);
				cArray.add(jobj2);
				cArray.add(jobj3);
				
				//cArray.add(dateType[0]);
				//cArray.add(dto.getWeight());
				//cArray.add(dto.getBmi());
				
				String str3 = cArray.toJSONString();
				System.out.println(str3);				
				
				JSONObject cValue = new JSONObject();
				cValue.put("c", cArray);
				
				//cArray.add(test);
				jArrayRows.add(cValue);
				String str2 = jArrayRows.toJSONString();
				System.out.println(str2);
			}
			
			//String stringCols = jArrayCols.toJSONString();
			//String stringRows = jArrayRows.toJSONString();
			
			
	        //String str = "{"+"\"cols\":"+stringCols+", "+"\"rows\":"+stringRows+"}";	    
			
			data.put("cols", jArrayCols);
			data.put("rows", jArrayRows);
			
			
			 //Gson gson = new Gson();
			 //Gson gson1 = new Gson();
	         String jsonPlace = data.toJSONString();
	        // String jsonp = data1.toJSONString();
	        //String tarray = gson.toJson(jArrayRows);
	        //String t = jsonPlace + jsonp;
	       
			System.out.println(data.toJSONString());
			response.getWriter().print(data.toJSONString());
		} else if(command.equals("charts")) {
			int mb_no = Integer.parseInt(request.getParameter("mb_no"));
			System.out.println(mb_no);
			System.out.println(command);
			List<InbodyDto> list = biz.selectList(mb_no);
			
			JSONObject data = new JSONObject();
			
			JSONArray jArrayCols = new JSONArray();
			JSONArray jArrayRows = new JSONArray();
			
			JSONObject obj = new JSONObject();
			
			JSONArray dateJson = new JSONArray();
			JSONArray dataWeight = new JSONArray();
			JSONArray dataBmi = new JSONArray();
			
			String str1 = jArrayCols.toJSONString();
			//System.out.println(str1);
			StringBuffer test = new StringBuffer();
			for(InbodyDto dto : list) {
				
				//String weight = Integer.toString(dto.getWeight());
				//String bmi = Double.toString(dto.getBmi());
				
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String date = transFormat.format(dto.getIb_date());
				String[] dateType = date.split(" ");
				for(int i =0; i<dateType.length; i++) {
					System.out.println(dateType[i]);
				}
				
				
				dateJson.add(dateType[0]);
				
				
				dataWeight.add(dto.getWeight());
				
				
				dataBmi.add(dto.getBmi());
				
				
			
			}
			
			data.put("date", dateJson);
			data.put("weight", dataWeight);
			data.put("bmi", dataBmi);
			
			
			
			
	        //String str = "{"+"\"cols\":"+stringCols+", "+"\"rows\":"+stringRows+"}";
	        
	       // JsonElement element = JsonParser.parseString(str);
	       
	        //JsonObject data = element.getAsJsonObject();
	     
			//data.put("cols", jArrayCols);
			//data.put("rows", jArrayRows);
			
			//System.out.println(str);
			response.getWriter().print(data);
		} else if(command.equals("test")) {
			int mb_no = Integer.parseInt(request.getParameter("mb_no"));
			System.out.println(mb_no);
			System.out.println(command);
			List<InbodyDto> list = biz.selectList(mb_no);
			
			//JSONObject data = new JSONObject();
			
			JSONArray j = new JSONArray();
			JSONArray J = new JSONArray();	
			
			j.add("datetime");
			j.add("weight");
			j.add("bmi");
			J.add(j);
			
			for(InbodyDto dto : list) {
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String date = transFormat.format(dto.getIb_date());
				String[] dateType = date.split(" ");
				JSONArray j1 = new JSONArray();
				j1.add(dateType[0]);
				j1.add(dto.getWeight());
				j1.add(dto.getBmi());
				
				J.add(j1);
			}
			
			String str = J.toJSONString();
			System.out.println(str);
			response.getWriter().print(J);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
