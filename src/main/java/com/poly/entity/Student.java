package com.poly.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

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
	@NotBlank(message="id not null")
	private String id;

	@DecimalMax(value="10",message="between 0-10")
	@DecimalMin(value="0",message="between 0-10")
	@NotNull(message="mark not null")
	private Double mark;

	@NotBlank(message="name not null")
	private String name;

	//bi-directional many-to-one association to Major
	@ManyToOne
	@JoinColumn(name="idmajor")
	private Major major;

	
}
