package mapper;

import bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface UserMapper {
    public ArrayList<User> getAllUser();
    public User getUserByNameAndPsw(@Param("userName")String userName, @Param("password")String password);
    public int insertUser(@Param("user")User user);
}
