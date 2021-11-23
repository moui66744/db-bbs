package mapper;

import bean.Post;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface PostMapper {
    ArrayList<Post> getAllPost();
    ArrayList<Post> getAllPostByTopicId(int topicId);
    int insertNewPost(@Param("post") Post post);
}
