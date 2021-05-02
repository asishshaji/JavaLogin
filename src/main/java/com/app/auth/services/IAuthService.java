package com.app.auth.services;

import com.app.auth.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface IAuthService {
  public User registerUser(String username, String password);

  public User loginUser(String username, String password);

  public User findById(int id);
}
