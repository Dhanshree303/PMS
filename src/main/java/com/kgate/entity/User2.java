package com.kgate.entity;


public class User2 
{
	/*
	 * @Id
	 * 
	 * @GeneratedValue(strategy=GenerationType.AUTO)
	 */
	private long id;
	private String name;
	private String usertype;
	private String email;
	private String password;
	
	public User2() {
		super();
	}
	
	public User2(long id, String name, String usertype, String email, String password) {
		super();
		this.id = id;
		this.name = name;
		this.usertype = usertype;
		this.email = email;
		this.password = password;
	}

	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User2 [id=" + id + ", name=" + name + ", usertype=" + usertype + ", email=" + email + ", password="
				+ password + "]";
	}
	
	
	
	
	
	

}
