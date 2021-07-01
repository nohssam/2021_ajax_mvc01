package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XmlCommand01 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		
		// 비즈니스 로직이나 DB 처리
		
		// 이스케이프(리터럴)문자 :  \"  -> "
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product>");
		sb.append("<name>흰 우유</name>");
		sb.append("<price>950</price>");
		sb.append("</product>");
		sb.append("<product>");
		sb.append("<name>딸기 우유</name>");
		sb.append("<price>950</price>");
		sb.append("</product>");
		sb.append("<product>");
		sb.append("<name>초코 우유</name>");
		sb.append("<price>950</price>");
		sb.append("</product>");
		sb.append("<product>");
		sb.append("<name>바나나 우유</name>");
		sb.append("<price>1450</price>");
		sb.append("</product>");
		sb.append("</products>");
		
		return sb.toString();
	}
}
