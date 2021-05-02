package com.app.auth.utils;

public class Constants {
  public static String userRegErrorMessage =
    "Unable to register user,username already exists";
  public static String userRegSuccessMessage = "Successfully registered user";
  public static String userLoginErrorMessage = "Invalid credentials";

  public static byte[] salt = "BabBABBAB".getBytes();
}
