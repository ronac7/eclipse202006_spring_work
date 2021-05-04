package a.b.c.json;

import java.io.File;
import java.io.FileReader;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class JsonRead_2{

   public static void main(String[] args) {
      // TODO Auto-generated method stub
      JSONParser parser = new JSONParser();
      
      try {
         String jsonFilePath = CommonJSON.JSON_FILE_PATH;
         File jsonFile = new File( jsonFilePath + "/JsonRead.json");
         
         Object obj = parser.parse(new FileReader(jsonFile));
         JSONObject jsonObject = (JSONObject)obj;
         
         // name
         String name = (String)jsonObject.get("name");
         System.out.println("name >>> : " + name);
         
         // permanent
         Boolean permanent = (Boolean)jsonObject.get("permanent");
         System.out.println("permanent >>> : " + permanent);
         
         // id
         long id = (Long)jsonObject.get("id");
         System.out.println("id >>> : " + id);
         
         // phoneNum - 뽑기 1
         JSONArray phoneNum = (JSONArray)jsonObject.get("phoneNumbers");
         for(int i =0; i<phoneNum.size();i++) {
            String phone = (String)phoneNum.get(i);
            System.out.println("phone >>> : " +  phone);
         }
         // phoneNum - 뽑기 2
         Iterator iter = phoneNum.iterator();
         while (iter.hasNext()){
            System.out.println("phoneNum >>> : " + iter.next());
         }
         
         JSONArray array = (JSONArray)jsonObject.get("address");         
         for(int i=0; i < array.size(); i++){
            JSONObject result = (JSONObject)array.get(i);
            System.out.print("street >>> : " + result.get("street") + " ");
            System.out.print("city >>> : " + result.get("city") + " ");
            System.out.print("address >>> : " + result.get("zipcode") + " ");
            System.out.println();
         }
         
         String role = (String)jsonObject.get("role");
         System.out.println("role >>> : " + role);
      }catch(Exception e){
         
      }
   }

}