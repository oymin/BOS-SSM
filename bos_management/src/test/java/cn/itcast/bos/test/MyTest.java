package cn.itcast.bos.test;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.util.DigestUtils;

public class MyTest {
	public static void main(String[] args) throws Exception {
		String str = "1,11,1101,1102,1103,1104,1105,1106,1107,1108,13,1301,1302,1303,1304,1305,1306";
		
		String substring = str.substring(2, str.length());
		System.out.println(substring);
		
	}
}
