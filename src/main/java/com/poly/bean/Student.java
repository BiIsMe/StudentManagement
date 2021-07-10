package com.poly.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="student")
public class Student implements Serializable {

	@Id
	@Column(name="idSt")
	private String id;
	
	private String name;
	
	private boolean sex=true;
	
	private String gmail;
	
	private Double mark = 0.0;
	
	private Date dob;
	
	@ManyToOne
	@JoinColumn(name="major")
	private Major major;
}
