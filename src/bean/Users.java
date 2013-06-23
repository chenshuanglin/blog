package bean;

// Generated 2013-5-18 21:27:28 by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * Users generated by hbm2java
 */
public class Users implements java.io.Serializable {
	
	private Integer userId;
	private String username;
	private String password;
	private String nic;
	private String sex;
	private Integer age;
	private String email;
	private String selfshow;
	private String photo;
	private Set<Comments> commentses = new HashSet<Comments>(0);
	private Set<Blogclassify> blogclassifies = new HashSet<Blogclassify>(0);
	private Set<Blogcontent> blogcontents = new HashSet<Blogcontent>(0);

	public Users() {
	}

	public Users(String username, String password, String nic, String sex) {
		this.username = username;
		this.password = password;
		this.nic = nic;
		this.sex = sex;
	}

	public Users(String username, String password, String nic, String sex,
			Integer age, String email, String selfshow, String photo,
			Set<Comments> commentses, Set<Blogclassify> blogclassifies,
			Set<Blogcontent> blogcontents) {
		this.username = username;
		this.password = password;
		this.nic = nic;
		this.sex = sex;
		this.age = age;
		this.email = email;
		this.selfshow = selfshow;
		this.photo = photo;
		this.commentses = commentses;
		this.blogclassifies = blogclassifies;
		this.blogcontents = blogcontents;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNic() {
		return this.nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSelfshow() {
		return this.selfshow;
	}

	public void setSelfshow(String selfshow) {
		this.selfshow = selfshow;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Set<Comments> getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set<Comments> commentses) {
		this.commentses = commentses;
	}

	public Set<Blogclassify> getBlogclassifies() {
		return this.blogclassifies;
	}

	public void setBlogclassifies(Set<Blogclassify> blogclassifies) {
		this.blogclassifies = blogclassifies;
	}

	public Set<Blogcontent> getBlogcontents() {
		return this.blogcontents;
	}

	public void setBlogcontents(Set<Blogcontent> blogcontents) {
		this.blogcontents = blogcontents;
	}

}
