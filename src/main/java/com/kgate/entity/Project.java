package com.kgate.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;


@Entity
@Table
@Proxy(lazy=false)
public class Project 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long pid;
	private String projectname;
	private String projdescription;
	private Date startdate;
	private Date enddate;
	private long managerid;
	
	public long getPid() {
		return pid;
	}
	public void setPid(long pid) {
		this.pid = pid;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getProjdescription() {
		return projdescription;
	}
	public void setProjdescription(String projdescription) {
		this.projdescription = projdescription;
	}
	
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public long getManagerid() {
		return managerid;
	}
	public void setManagerid(long managerid) {
		this.managerid = managerid;
	}
	
	@Override
	public String toString() {
		return "Project [pid=" + pid + ", projectname=" + projectname + ", projdescription=" + projdescription
				+ ", startdate=" + startdate + ", enddate=" + enddate + ", managerid=" + managerid + "]";
	}
	
	
	
	

}
