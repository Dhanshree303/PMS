package com.kgate.repository;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.kgate.entity.User;


public interface CollegeRepository extends JpaRepository<User, Long>
{
	List<User> findAllByUsertype(String usertype, Pageable pageable);
	
	@Query("select u from User u where u.email=:email and u.password=:password")
	User authenticateUser(@Param("email") String email, @Param("password") String password);
	
	
	/*
	 * @Query("select u from User u where u.id=:id and u.name=:name and u.usertype=:usertype and u.email=:email and u.password=:password "
	 * ) List<User2> downloadUserData(@Param("id") long id, @Param("name") String
	 * name, @Param("usertype") String usertype,
	 * 
	 * @Param("email") String email, @Param("password") String password);
	 */
	 
	@Query("select u from User u where u.usertype!='Admin'")
	List<User> userList(); 
	
	
//	  List<User> findAllByManagerId(long managerId);
	
	 @Query("select u from User u where u.managerId=:managerId")
	 List<User> empList(@Param("managerId") long managerId);
	
}
