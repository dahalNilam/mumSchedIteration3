package org.mumsched.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Entry {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
    @Size(min=2, max=10)
	@NotEmpty(message="no empty field accepted")
	private String ename;
    @NotNull @Min(2017) @Max(2020)
	private String eyear;
	 @NotNull @Min(25) @Max(200)
	private int nostudents;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	
	public String getEyear() {
		return eyear;
	}
	public void setEyear(String eyear) {
		this.eyear = eyear;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public int getNostudents() {
		return nostudents;
	}
	public void setNostudents(int nostudents) {
		this.nostudents = nostudents;
	}
	
	
}
