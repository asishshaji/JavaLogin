package com.app.auth.services;

import com.app.auth.entity.User;
import com.app.auth.repository.AuthRepo;
import java.util.NoSuchElementException;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService implements IAuthService {
  private AuthRepo authRepo;

  @Autowired
  public AuthService(AuthRepo authRepo) {
    this.authRepo = authRepo;
  }

  @Override
  public User registerUser(String username, String password) {
    // TODO Auto-generated method stub
    User user = new User();

    System.out.println(authRepo.findByUsername(username));

    if (authRepo.findByUsername(username) == null) {
      user.setEmail(username);
      user.setPassword(password);
      return authRepo.save(user);
    }
    return null;
  }

  @Override
  public User loginUser(String username, String password) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public User findById(int id) {
    try {
      Optional<User> e = authRepo.findById(id);
      User employee = e.get();
      return employee;
    } catch (NoSuchElementException e) {
      e.printStackTrace();
      return null;
      //TODO: handle exception
    }
  }
}
