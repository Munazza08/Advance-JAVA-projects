package com.employee;

import java.time.LocalTime;

public class TimeFinder 
{
	public static String getCurrentTime()
	{
		LocalTime lt=LocalTime.now();
		String time=lt.getHour()+":"+lt.getMinute()+":"+lt.getSecond();
		return time;
	}
	public static String getTotalTime(String intime,String outtime)
	{
		String[] x=intime.split(":");
		int total1=Integer.parseInt(x[0])*3600+Integer.parseInt(x[1])*60+Integer.parseInt(x[2]);
		String[] y=outtime.split(":");
		int total2=Integer.parseInt(y[0])*3600+Integer.parseInt(y[1])*60+Integer.parseInt(y[2]);
		int total=total1-total2;
		int h=total/3600;
		int s=total%3600;
		int m=s/60;
		s=s%60;
		String time=h+":"+m+":"+s;
		return time;
	}
}
