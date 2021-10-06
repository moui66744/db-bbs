package test;

import bean.User;
import mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import util.MybatisUtil;

import java.util.ArrayList;

public class UserTest {
    public static void main(String[] args) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        ArrayList<User> allUser = mapper.getAllUser();
        for (User user:
             allUser) {
            System.out.println(user);
        }
    }
}
