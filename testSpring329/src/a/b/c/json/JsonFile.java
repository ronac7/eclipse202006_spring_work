package a.b.c.json;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JsonFile {
	
//	public static final String JSON_FILE_NAME = "JsonTest";
	
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		
		JSONObject personInfo = new JSONObject();
		personInfo.put("name",  "LeeJinsoo");
		personInfo.put("age", "34");
		personInfo.put("jobInfo", "programmer");
		
		JSONArray hobbyList = new JSONArray();
		hobbyList.add("programming");
		hobbyList.add("music");
		hobbyList.add("book");
		
		personInfo.put("message", hobbyList);
		
		System.out.println("" + personInfo.get("name"));
		
		try {
			BufferedWriter bw = new BufferedWriter(
					new FileWriter(CommonJSON.JSON_FILE_PATH + "/" + personInfo.get("name") + ".json"));
			bw.write(personInfo.toJSONString());
			bw.flush();
			bw.close(); // 무조건 닫아줘야한다.
		} catch(IOException e) {
			
		}
		
		System.out.println("personInfo >>> : " + personInfo);
		
	}

}
