package com.poly.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="student")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	private String idSt;
	
	private String name;
	
	private boolean sex=true;
	
	private String gmail;
	
	private Double mark = 0.0;
	
	private String major;
}
