package com.javaclass;

import java.text.DateFormat;
import java.util.*;

public class TimeFinder {

	public String[] getTime(String location) {
		TimeZone timeZone = TimeZone.getTimeZone(location);
		DateFormat formatter = DateFormat.getTimeInstance();
		formatter.setTimeZone(timeZone);
		
		Date d = new Date();
		String[] temp = new String[2];
		temp[0] = formatter.format(d);
		temp[1] = timeZone.getDisplayName();
		
		return temp;
	}
}
