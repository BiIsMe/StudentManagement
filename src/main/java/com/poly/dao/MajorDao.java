package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.bean.Major;

public interface MajorDao extends JpaRepository<Major, String> {

}
