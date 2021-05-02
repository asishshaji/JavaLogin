package com.app.auth.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id")
  private int id;

  @Column(name = "email")
  private String email;

  @Column(name = "password")
  private String password;

  public User() {}

  public String getEmail() {
    return this.email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return this.password;
  }

  @Override
  public String toString() {
    return (
      "{" +
      " email='" +
      getEmail() +
      "'" +
      ", password='" +
      getPassword() +
      "'" +
      "}"
    );
  }

  public void setPassword(String password) {
    this.password = password;
  }
}
