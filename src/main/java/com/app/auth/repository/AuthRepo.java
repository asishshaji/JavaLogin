package com.app.auth.repository;

import com.app.auth.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthRepo extends JpaRepository<User, Integer> {
  @Query("Select password from User where email=:email")
  String findByUsername(@Param("email") String username);

  @Query("from User u where u.email=:email")
  User findUserByUsername(@Param("email") String username);
}
// @Query( "Select * from users where email=?1", nativeQuery = true)
