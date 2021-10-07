package service;

import bean.User;

import java.util.ArrayList;

public interface UserService {
    public ArrayList<User> getAllUser();
    public User getUserByNameAndPsw(String userName, String password);
}
