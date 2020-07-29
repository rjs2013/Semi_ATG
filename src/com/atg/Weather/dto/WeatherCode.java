package com.atg.Weather.dto;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

	public class WeatherCode {
		// 최상 노드 URL
		final static String topURL = "http://www.kma.go.kr/DFSROOT/POINT/DATA/top.json.txt";
		// 중간 노드 URL
		final static String mdlURL = "http://www.kma.go.kr/DFSROOT/POINT/DATA/mdl.%s.json.txt";
		// 최하 노드 URL
		final static String leafURL = "http://www.kma.go.kr/DFSROOT/POINT/DATA/leaf.%s.json.txt";
		// KEY 정보
		final static String KEY_CODE = "code";
		final static String KEY_VALUE = "value";
		final static String KEY_X = "x";
		final static String KEY_Y = "y";

		// 각각의 노드를 저장할 리스트
		static ArrayList<WeatherDto> topList = new ArrayList<WeatherDto>();
		static ArrayList<WeatherDto> mdlList = new ArrayList<WeatherDto>();
		static ArrayList<WeatherDto> leafList = new ArrayList<WeatherDto>();

     public static void main(String[] args) {
         JSONArray jsonArray = null;

         // 최고 노드
         jsonArray = getJSON(topURL);
         parseJSON(topList, jsonArray, null, null, false);

         System.out
                 .println("============================================================");

         // 중간 노드
         for (WeatherDto dto : topList) {
             jsonArray = null;
             jsonArray = getJSON(String.format(mdlURL, dto.getCode()));
             parseJSON(mdlList, jsonArray, dto.getCode(), dto.getName(), false);
         }

         System.out
                 .println("============================================================");

         // 최하 노드
         for (WeatherDto dto : mdlList) {
             jsonArray = null;
             jsonArray = getJSON(String.format(leafURL, dto.getCode()));
             parseJSON(leafList, jsonArray, dto.getCode(), dto.getName(), true);
         }

         // 파일 출력
         try {
             PrintStream out = new PrintStream(new FileOutputStream(
                     "OutFile.txt"));
             // 최고 노드 출력
             for (WeatherDto dto : topList) {
                 out.println(dto.getCode() + "\t" + dto.getName() + "\t"
                         + dto.getGridX() + "\t" + dto.getGridY() + "\t"
                         + dto.getParentCode() + "\t" + dto.getParentName());
             }

             // 중간 노드 출력
             for (WeatherDto dto : mdlList) {
                 out.println(dto.getCode() + "\t" + dto.getName() + "\t"
                         + dto.getGridX() + "\t" + dto.getGridY() + "\t"
                         + dto.getParentCode() + "\t" + dto.getParentName());
             }

             // 최하 노드 출력
             for (WeatherDto dto : leafList) {
                 out.println(dto.getCode() + "\t" + dto.getName() + "\t"
                         + dto.getGridX() + "\t" + dto.getGridY() + "\t"
                         + dto.getParentCode() + "\t" + dto.getParentName());
             }

             out.close();

         } catch (FileNotFoundException e) {
             e.printStackTrace();
         }
     }

     /**
      * 지정된 URL을 기초로 JSON형식으로 취득
      * @param urlStr URL
      * @return
      */
     private static JSONArray getJSON(final String urlStr) {
         URL url = null;
         HttpURLConnection conn = null;
         StringBuilder jsonHtml = new StringBuilder();

         try {
             url = new URL(urlStr);
             conn = (HttpURLConnection) url.openConnection();

             if (conn != null) {
                 conn.setConnectTimeout(10000);
                 conn.setUseCaches(false);

                 if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {
                     BufferedReader br = new BufferedReader(
                             new InputStreamReader(conn.getInputStream()));

                     String line = null;
                     while ((line = br.readLine()) != null) {
                         jsonHtml.append(line + "\n");
                     }
                     br.close();
                 }
                 conn.disconnect();
             }
         } catch (MalformedURLException e) {
             e.printStackTrace();
         } catch (IOException e) {
             e.printStackTrace();
         }
         JSONArray jsonobj = (JSONArray) JSONValue.parse(jsonHtml.toString());
         return jsonobj;
     }

     /**
      * 파싱된 노드 리스트 → CityDTO형식으로 변환 
      * 
      * @param list 변환결과를 담을 리스트
      * @param array 현재 노드 리스트
      * @param parentCode 부모 노드 코드
      * @param parentName 부모 노드 이름
      * @param isLast 최하노드인가?
      */
     private static void parseJSON(ArrayList<WeatherDto> list, JSONArray array,
             String parentCode, String parentName, boolean isLast) {
        JSONObject data;
        WeatherDto city = null;
         for (int i = 0; i < array.size(); i++) {
             data = (JSONObject) array.get(i);

             if (!isLast) {
                 // 최상, 중간 노드
                 city = new WeatherDto(data.get(KEY_CODE).toString(), data.get(
                         KEY_VALUE).toString(), parentCode, parentName);

                 System.out.println(city.getCode() + "\t" + city.getName()
                         + "\t" + city.getParentCode() + "\t"
                         + city.getParentName());
             } else {
                 // 최하 노드
                 city = new WeatherDto(data.get(KEY_CODE).toString(), data.get(
                         KEY_VALUE).toString(), data.get(KEY_X).toString(), data
                         .get(KEY_Y).toString(), parentCode, parentName);

                 System.out.println("{\"code\"" + ":" + "\"" + city.getCode() + "\"" + ", \"name\"" + ":" + "\"" + city.getName()
                 + "\"" + ", \"x\"" + ":" + "\"" + city.getGridX() + "\"" + ", \"y\"" + ":" + "\"" + city.getGridY()
                 + "\"" + ", \"parentcode\"" + ":" + "\"" + city.getParentCode()
                 + "\"" + ", \"parentname\"" + ":" + "\"" + city.getParentName() + "\"}");
             }

             list.add(city);
         }
     }
 }










