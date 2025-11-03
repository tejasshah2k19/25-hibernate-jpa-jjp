package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.StudentEntity;
import com.repository.StudentRepository;

@Controller
public class SessionController {

	@Autowired
	StudentRepository studentRepository;

	@GetMapping("newstudent")
	public String newStudent() {
		return "NewStudent";
	}

	@PostMapping("saveStudent")
	public String saveStudent(StudentEntity studentEntity) {
		studentRepository.save(studentEntity);// sql
		return "redirect:/liststudents";
	}

	@GetMapping("liststudents")
	public String listStudent(Model model) {
		List<StudentEntity> students = studentRepository.findAll(); // select * from students
		model.addAttribute("students",students);
		return "ListStudent";
	}

}
