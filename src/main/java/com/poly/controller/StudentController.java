package com.poly.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.MajorDao;
import com.poly.dao.StudentDao;
import com.poly.entity.Major;
import com.poly.entity.Student;

@Controller
public class StudentController {
	
	@Autowired
	MajorDao mdao;
	@Autowired
	StudentDao dao;

	@RequestMapping("student")
	public String student(Model model) {
		List<Student> stlist = dao.findAll();
		model.addAttribute("listST",stlist);
		model.addAttribute("student",new Student());
		return "student";
	}
	
	@RequestMapping(value="student/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Student st = dao.findById(id).get();
		List<Student> stlist = dao.findAll();
		model.addAttribute("listST",stlist);
		model.addAttribute("student",st);
		return "student";
	}
	
	@RequestMapping(value="student/delete/{id}")
	public String delete(Model model,@PathVariable("id") String id) {
		dao.deleteById(id);
		
		return "redirect:/student";
	}
	
	@RequestMapping(value="student", params = "btnInsert")
	public String insert(Model model, @Validated @ModelAttribute("student") Student st, BindingResult result) {
		if(!result.hasErrors())
			dao.save(st);
		List<Student> stlist = dao.findAll();
		model.addAttribute("listST",stlist);
		return "student";
	}
	
	@RequestMapping(value="student",params = "btnReset")
	public String reset() {
		return "redirect:/student";
	}
	
	
	@ModelAttribute("majors")
	public Map<String, String> getMajors(){
		List<Major> list = mdao.findAll();
		Map<String, String>map = new HashMap<String, String>();
		for(Major m : list) {
			map.put(m.getId(), m.getName());
		}
		return map;
	}
}
