package mapper;

import bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface UserMapper {
    ArrayList<User> getAllUser();
    User getUserByNameAndPsw(@Param("userName")String userName, @Param("password")String password);
    int insertUser(@Param("user")User user);
    int insertFavorite(@Param("userId")int userId, @Param("postId")int postId);
    int ChangePwd(@Param("userId")int userId, @Param("newPwd")String newPwd);
    int ChangeMail(@Param("userId")int userId, @Param("newEma")String newEma);
}
