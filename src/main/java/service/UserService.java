package service;

import bean.User;

import java.util.ArrayList;

public interface UserService {
    ArrayList<User> getAllUser();
    User getUserByNameAndPsw(String userName, String password);
    int insertUser(User user);
    int insertFavorite(int userId, int postId);
}
