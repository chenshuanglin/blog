package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import sessionFactory.HibernateSessionFactory;

import bean.Blogcontent;
import bean.Comments;
import bean.Users;



public class BlogDao {
	private Session session;   //定义一个session接口
	private Query query;       //定义一个query接口
	private Transaction ta;    //定义一个Transation接口
	public BlogDao(){}	
	public List<Blogcontent> getAllBlog(int pageNumber,int pageSize){
		session = HibernateSessionFactory.getSession();
		List<Blogcontent> allBlog = new ArrayList<Blogcontent>();
		String hql = "from Blogcontent as blog order by blog.postTime desc";
		query = session.createQuery(hql);    //执行查询语句
		query.setFirstResult((pageNumber - 1)*pageSize);
		query.setMaxResults(pageSize);
		allBlog = query.list();  //为博客集合赋值
		session.close();
		return allBlog;
	}
	public Users getUser(int userid){
		session = HibernateSessionFactory.getSession();
		ta = session.beginTransaction();
		Users user = (Users)session.get(Users.class, userid);
		ta.commit();
		session.close();
		return user;
	}
	
	public List<Comments> getComments(int blogId){
		session = HibernateSessionFactory.getSession();
		List<Comments> allcomments = new ArrayList<Comments>();
		String hql = "from Comments as comment where comment.blogcontent.blogContentId = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, blogId);
		allcomments = query.list();
		session.close();
		return allcomments;
	}
}
