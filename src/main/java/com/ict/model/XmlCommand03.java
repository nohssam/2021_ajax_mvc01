package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XmlCommand03 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product price=\"1500\">포카리스웨트</product>");
		sb.append("<product price=\"1400\">게토레이</product>");
		sb.append("<product price=\"1100\">암바사</product>");
		sb.append("<product price=\"1200\">밀키스</product>");
		sb.append("</products>");
		return sb.toString();
	}
}
