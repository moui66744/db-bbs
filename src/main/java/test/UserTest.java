package test;

import bean.User;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import service.UserServiceImpl;
import util.MybatisUtil;

import java.util.ArrayList;

public class UserTest {
    public static void main(String[] args) {
        UserServiceImpl userService = new UserServiceImpl();
        int res = userService.insertFavorite(2, 3);
        System.out.println(res);
    }
}
