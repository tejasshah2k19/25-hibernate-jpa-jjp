package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.entity.StudentEntity;

@Repository
public interface StudentRepository extends JpaRepository<StudentEntity, Integer> {
	
	//findByXXX()
	List<StudentEntity> findByFirstName(String firstName);

	
	@Query(value = "select * from students where first_name like lower(:firstName) or first_name like upper(:firstName) ",nativeQuery = true)
	List<StudentEntity> findByAnyFirstName(String firstName);

	
	
}
