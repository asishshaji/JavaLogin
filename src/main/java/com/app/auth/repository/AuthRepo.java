package com.app.auth.repository;

import com.app.auth.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthRepo extends JpaRepository<User, Integer> {
  @Query("Select password from User where email=?1")
  String findByUsername(String username);

  @Query(value = "Select * from users where email=?1", nativeQuery = true)
  User findUserByUsername(String username);
}
