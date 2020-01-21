package com.kgate.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.kgate.entity.Task;

public interface TaskRepository extends JpaRepository<Task, Long>
{
	
	/*
	 * @Query("select t from Task t where t.mangerid=:mangerid and t.projectid=:projectid"
	 * ) List<Task> taskList(@Param("mangerid") long mangerid, @Param("projectid")
	 * long projectid);
	 */
	 
	
	 List<Task> findAllByMangeridAndProjectid(long mangerid, long projectid); 
	 
	 
	 Task findById(long id);
	 
	
}
