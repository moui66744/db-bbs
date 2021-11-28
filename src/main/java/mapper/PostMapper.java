package mapper;

import bean.Post;
import javafx.geometry.Pos;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface PostMapper {
    ArrayList<Post> getAllPost();
    ArrayList<Post> getAllPostByTopicId(int topicId);
    Post getPostByPostId(int postId);
    int insertNewPost(@Param("post") Post post);
    ArrayList<Post> getAllFavPostByUserId(int userId);
    ArrayList<Post> getPostByUserId(int userId);
}
