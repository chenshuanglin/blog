package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import bean.Users;

import com.opensymphony.xwork2.ActionSupport;

import dao.BlogDao;

public class GetUserAction extends ActionSupport{
	private String test;
	private String userid;
	private Users user;
	public void setTest(String test){
		this.test = test;
	}
	public String getTest(){
		return this.test;
	}
	public void setUserid(String userid){
		this.userid = userid;
	}
	public String getUseridstr(){
		return this.userid;
	}
	public void setUser(Users user){
		this.user = user;
	}
	public Users getUser(){
		return user;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("userid", getUseridstr());
		request.setAttribute("test", getTest());
		BlogDao blogDao = new BlogDao();
		int id = Integer.parseInt(userid);
		user = blogDao.getUser(id);
		System.out.println(userid);
		System.out.println(test);
		if(test!=null){
			return INPUT;
		}
		else{
			return SUCCESS;
		}
	}
}
