package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import bean.Blogcontent;
import bean.Users;

import com.opensymphony.xwork2.ActionSupport;

import dao.BlogDao;

import freemarker.ext.servlet.HttpSessionHashModel;

public class GetIndexblog extends ActionSupport{
	private List<Blogcontent> allContent;  //获得所有博客集合
	private int pageNumber;               //当前页面
	private int pageSize;                  //页面大小
	public List getAllContent(){
		return allContent;
	}
	
	public void setAllContent(List<Blogcontent> allContent){
		this.allContent = allContent;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String pageNumberStr = request.getParameter("pageNumber");
		if(pageNumberStr == null || "".equals(pageNumberStr.trim())){
			pageNumberStr =  "1";
		}
		pageSize = 5;
		pageNumber = Integer.parseInt(pageNumberStr);
		BlogDao blogDao = new BlogDao();
		allContent = blogDao.getAllBlog(pageNumber, pageSize);
		if(allContent.isEmpty()){
			return INPUT;
		}
		else{
			return SUCCESS;
		}
	}
}
