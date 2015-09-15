package sai;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class Sai extends ActionSupport  {
    private String yun="nam";
	
	public String getYun() {
		return yun;
	}
	public void setYun(String yun) {
		this.yun = yun;
	}
	private String name="saikira";
	public String getName() {
		return name;
	}
	public void setName(String myRing) {
		this.name = myRing;
	}
	public String exec() throws Exception
	{
		
		System.out.println(name);
      //  ServletActionContext.getRequest()
		
		return "success";
	}
}
