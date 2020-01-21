package com.kgate.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.kgate.entity.Project;

public interface ProjectRepository extends JpaRepository<Project,Long>
{
	@Query("select p from Project p where p.managerid=:managerid")
	List<Project> projectList(@Param("managerid") long managerid);
}
