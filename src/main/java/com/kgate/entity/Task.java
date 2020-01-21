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
public class Task 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String taskname;
	private Date startdate;
	private Date enddate;
	private String taskStatus;
	private String taskDescription;
	private long projectid;
	private long mangerid;
	private String empname;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTaskname() {
		return taskname;
	}
	public void setTaskname(String taskname) {
		this.taskname = taskname;
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
	public String getTaskStatus() {
		return taskStatus;
	}
	public void setTaskStatus(String taskStatus) {
		this.taskStatus = taskStatus;
	}
	public String getTaskDescription() {
		return taskDescription;
	}
	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}
	public long getProjectid() {
		return projectid;
	}
	public void setProjectid(long projectid) {
		this.projectid = projectid;
	}
	public long getMangerid() {
		return mangerid;
	}
	public void setMangerid(long mangerid) {
		this.mangerid = mangerid;
	}
	
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	
	@Override
	public String toString() {
		return "Task [id=" + id + ", taskname=" + taskname + ", startdate=" + startdate + ", enddate=" + enddate
				+ ", taskStatus=" + taskStatus + ", taskDescription=" + taskDescription + ", projectid=" + projectid
				+ ", mangerid=" + mangerid + ", empname=" + empname + "]";
	}
	
	
	
	
	

}
