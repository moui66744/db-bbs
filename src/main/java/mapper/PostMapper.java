package mapper;

import bean.Post;

import java.util.ArrayList;

public interface PostMapper {
    public ArrayList<Post> getAllPost();
    ArrayList<Post> getAllPostByTopicId(int topicId);
}
