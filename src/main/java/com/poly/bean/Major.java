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
	private static final long serialVersionUID = 1L;
	
	@Id
	private String idMajor;
	
	private String name;
	
}
