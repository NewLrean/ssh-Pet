package testUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetTime {
	public static String setdate(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		return df.format(new Date());
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String t=setdate();
		System.out.println(t);
	}

}
