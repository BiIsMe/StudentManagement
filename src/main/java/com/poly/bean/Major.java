package com.poly.bean;
import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="major")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Major implements Serializable {
	
	@Id
	@Column(name="idMajor")
	private String id;
	
	private String name;
	
	@OneToMany(mappedBy = "major")
	private List<Student> students;
}
