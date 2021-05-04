package a.b.c.json;

import java.sql.Connection;
import java.sql.DriverManager;

public abstract class CommonJSON {

	// file path 
	public static final String JSON_FILE_PATH = "/Users/jins/Kosmo78/30_web/eclipse202006_spring_work/testSpring329/WebContent/json";
	
	private static final String KOS_URL = "jdbc:oracle:thin:@175.198.112.41:1522:orclLJS00";
	private static final String KOS_USER = "scott";
	private static final String KOS_PASS = "tiger";	
	private static final String KOS_DRIVER = "oracle.jdbc.driver.OracleDriver";
		
	public static Connection getConnection() {		
		
		Connection conn = null;
		
		try {
			Class.forName(CommonJSON.KOS_DRIVER);
			conn = DriverManager.getConnection( CommonJSON.KOS_URL
					                           ,CommonJSON.KOS_USER
					                           ,CommonJSON.KOS_PASS);
		}catch(Exception c) {
			System.out.println("드라이버 찾기에 문제가 발생 >>> : " + c);
		}	
				
		return conn;
	}
}
