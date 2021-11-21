package service;

import bean.Post;

import java.util.ArrayList;

public interface PostService {
    ArrayList<Post> getAllPost();
    ArrayList<Post> getAllPostByTopicId(int topicId);
}
