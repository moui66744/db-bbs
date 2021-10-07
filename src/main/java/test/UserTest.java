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
        User user = userService.getUserByNameAndPsw("zhangsan", "123456");
        System.out.println(user);
    }
}
