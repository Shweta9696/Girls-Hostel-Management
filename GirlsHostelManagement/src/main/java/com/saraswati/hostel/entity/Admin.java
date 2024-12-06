package com.saraswati.hostel.entity;

import org.springframework.core.annotation.Order;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="Admin")
@Order(2)
public class Admin {
	@Id
	private Long id;
	private String emailId;
	private String adminName;
	private long phoneNo;
	private String password;

}
