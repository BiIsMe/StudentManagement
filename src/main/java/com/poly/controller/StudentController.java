package com.poly.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.bean.Major;
import com.poly.bean.Student;
import com.poly.dao.MajorDao;
import com.poly.dao.StudentDao;

@Controller
public class StudentController {
	
	@Autowired
	StudentDao dao;
	@Autowired
	MajorDao mdao;

	@RequestMapping("student")
	public String student(Model model) {		
		model.addAttribute("student",new Student());
		return "student";
	}
	
	@RequestMapping("student/detail/{id}")
	public String detail(Model model,@PathVariable("idSt") String id) {
		List<Student> list = dao.findAll();
		Student st = dao.findById(id).get();
		model.addAttribute("student",st);
		model.addAttribute("list",list);
		return "student";
	}
	
	@RequestMapping("student/delete/{id}")
	public String delete(Model model,@PathVariable("idSt") String id) {
		List<Student> list = dao.findAll();
		dao.deleteById(id);
		return "redirect:/student";
	}
	
	@RequestMapping(value="student", params = "btnInsert")
	public String addSt(Model model,@Validated @ModelAttribute("student") Student st, BindingResult errors) {
		if(!errors.hasErrors()) {
			dao.save(st);
		}
		List<Student> list = dao.findAll();
		model.addAttribute("list",list);
		return "student";
	}
	
	@RequestMapping(value="student", params = "btnUpdate")
	public String updateSt(Model model,@Validated @ModelAttribute("student") Student st, BindingResult errors) {
		if(!errors.hasErrors()) {
			dao.save(st);
		}
		List<Student> list = dao.findAll();
		model.addAttribute("list",list);
		return "student";
	}
	
	@RequestMapping(value="student", params = "btnReset")
	public String resetSt(Model model) {
		return "redirect:/student";
	}
	
	@ModelAttribute("genders")
	public Map<Boolean, String> getGenders(){
		Map<Boolean, String> map = new HashMap<Boolean, String>();
		map.put(true, "male");
		map.put(false, "female");
		return map;
	}
	
	@ModelAttribute("majors")
	public Map<String, String> getMajors(){
		Map<String, String>map = new HashMap<String, String>();
		List<Major> list = mdao.findAll();
		for(Major m : list) {
			map.put(m.getIdMajor(), m.getName());
		}
		return map;
	}
}
