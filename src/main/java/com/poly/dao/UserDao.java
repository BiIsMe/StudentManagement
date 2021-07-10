package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.bean.User;

public interface UserDao extends JpaRepository<User, String> {

}
