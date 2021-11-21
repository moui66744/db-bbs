package test;

import bean.Post;
import service.PostService;
import service.PostServiceImpl;
import service.UserService;
import service.UserServiceImpl;

import java.util.ArrayList;

public class PostTest {
    public static void main(String args[]){
        PostService postService = new PostServiceImpl();
        ArrayList<Post> posts = postService.getAllPostByTopicId(1);
        for (Post p:posts){
            System.out.println(p);
        }
    }
}
