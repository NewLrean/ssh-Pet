package com.ssh.SetUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GetTime {
	public  String setdate(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		return df.format(new Date());
		
	}
}
