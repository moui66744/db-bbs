package test;

import bean.Post;
import bean.Topic;
import bean.User;
import mapper.PostMapper;
import service.PostService;
import service.PostServiceImpl;
import service.UserService;
import service.UserServiceImpl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class PostTest {
    public static void main(String args[]){
        PostServiceImpl postService = new PostServiceImpl();
        ArrayList<Post> allFavPost = postService.getAllFavPostByUserId(4);
        for (Post post :
                allFavPost) {
            System.out.println(post);
        }
    }
}
