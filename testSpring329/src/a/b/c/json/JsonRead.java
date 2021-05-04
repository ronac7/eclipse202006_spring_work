package a.b.c.json;

import java.io.File;
import java.io.FileReader;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class JsonRead {

	public static void main(String[] args) {
		JSONParser parser = new JSONParser();
		
		try {
			String jsonFilePath = CommonJSON.JSON_FILE_PATH;
			File jsonFile = new File( jsonFilePath + "/JsonRead.json");
			
			Object obj = parser.parse(new FileReader(jsonFile));
			JSONObject jsonObject = (JSONObject)obj;
			
			long id = (Long)jsonObject.get("id");
			System.out.println("id >>> : " + id);
			
			String name = (String)jsonObject.get("name");
			System.out.println("name >>> : " + name);
			
			Boolean permanent = (Boolean)jsonObject.get("permanent");
			System.out.println("permanent >>> : " + permanent);
			
			JSONArray array = (JSONArray)jsonObject.get("address");
			for(int i=0; i<array.size(); i++) {
				JSONObject result = (JSONObject)array.get(i);
				System.out.println("address >>> : " + result.get("street"));
				System.out.println("address >>> : " + result.get("city"));
				System.out.println("address >>> : " + result.get("zipcode"));
			}
			
			JSONArray phoneNum = (JSONArray)jsonObject.get("phoneNumbers");
			System.out.println("phoneNum.size() >>> : " + phoneNum.size());
			for(int i=0; i<phoneNum.size(); i++) {
				System.out.println("phoneNum.get(" + i + ") >>> : " + phoneNum.get(i));
			}
			Iterator iter = phoneNum.iterator();
			while (iter.hasNext()) {
				System.out.println("phoneNum >>> : " + iter.next());
			}

			String role = (String)jsonObject.get("role");
			System.out.println("role >>> : " + role);
			
		} catch(Exception e) {}
	}
}
