package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import bean.Comments;

import com.opensymphony.xwork2.ActionSupport;

import dao.BlogDao;

public class GetCommentsAction extends ActionSupport{
	private List<Comments> allcomments;
	public void setAllcomments(List<Comments> allcomments){
		this.allcomments = allcomments;
	}
	public List<Comments> getAllcomments(){
		return this.allcomments;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String blogId = request.getParameter("blogid");
		int id = Integer.parseInt(blogId);
		BlogDao blogDao = new BlogDao();
		allcomments = blogDao.getComments(id);
		return SUCCESS;
	}
}
