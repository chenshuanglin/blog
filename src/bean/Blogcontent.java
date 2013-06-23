package bean;

// Generated 2013-5-18 21:27:28 by Hibernate Tools 4.0.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Blogcontent generated by hbm2java
 */
public class Blogcontent implements java.io.Serializable {

	private Integer blogContentId;
	private Blogclassify blogclassify;
	private Users users;
	private String topic;
	private String matter;
	private Date postTime;
	private Set<Comments> commentses = new HashSet<Comments>(0);

	public Blogcontent() {
	}

	public Blogcontent(Blogclassify blogclassify, Users users, String topic,
			String matter, Date postTime) {
		this.blogclassify = blogclassify;
		this.users = users;
		this.topic = topic;
		this.matter = matter;
		this.postTime = postTime;
	}

	public Blogcontent(Blogclassify blogclassify, Users users, String topic,
			String matter, Date postTime, Set<Comments> commentses) {
		this.blogclassify = blogclassify;
		this.users = users;
		this.topic = topic;
		this.matter = matter;
		this.postTime = postTime;
		this.commentses = commentses;
	}

	public Integer getBlogContentId() {
		return this.blogContentId;
	}

	public void setBlogContentId(Integer blogContentId) {
		this.blogContentId = blogContentId;
	}

	public Blogclassify getBlogclassify() {
		return this.blogclassify;
	}

	public void setBlogclassify(Blogclassify blogclassify) {
		this.blogclassify = blogclassify;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getTopic() {
		return this.topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getMatter() {
		return this.matter;
	}

	public void setMatter(String matter) {
		this.matter = matter;
	}

	public Date getPostTime() {
		return this.postTime;
	}

	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}

	public Set<Comments> getCommentses() {
		return this.commentses;
	}

	public void setCommentses(Set<Comments> commentses) {
		this.commentses = commentses;
	}

}
