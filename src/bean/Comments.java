package bean;

// Generated 2013-5-18 21:27:28 by Hibernate Tools 4.0.0

/**
 * Comments generated by hbm2java
 */
public class Comments implements java.io.Serializable {

	private Integer commentsId;
	private Blogcontent blogcontent;
	private Users users;
	private String matter;

	public Comments() {
	}

	public Comments(Blogcontent blogcontent, Users users, String matter) {
		this.blogcontent = blogcontent;
		this.users = users;
		this.matter = matter;
	}

	public Integer getCommentsId() {
		return this.commentsId;
	}

	public void setCommentsId(Integer commentsId) {
		this.commentsId = commentsId;
	}

	public Blogcontent getBlogcontent() {
		return this.blogcontent;
	}

	public void setBlogcontent(Blogcontent blogcontent) {
		this.blogcontent = blogcontent;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getMatter() {
		return this.matter;
	}

	public void setMatter(String matter) {
		this.matter = matter;
	}

}
