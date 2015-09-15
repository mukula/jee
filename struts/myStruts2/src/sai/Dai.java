package sai;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;
import java.io.*;

import org.apache.struts2.ServletActionContext;

public class Dai implements Result {
	
	private static final long serialVersionUID = 1599674291550687699L;

	public void execute(ActionInvocation invocation)
			throws Exception
			{
		
		System.out.println(" in Dai ");
		PrintWriter pw= ServletActionContext.getResponse().getWriter();
		pw.println("hello");
		
	}
}
