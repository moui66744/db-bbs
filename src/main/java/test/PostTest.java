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
        int userId = 1;
        int topicId = 1;
        String title = "title";
        String context = "context";

        User user = new User();
        user.setUserId(userId);

        Topic topic = new Topic();
        topic.setTopicId(topicId);

        Post post = new Post();
        post.setAuthor(user);
        post.setPostTopic(topic);
        post.setTitle(title);
        post.setContext(context);
        Timestamp ts = new Timestamp(System.currentTimeMillis());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        post.setPostTime(df.format(ts));

        System.out.println(post);

        PostServiceImpl postService = new PostServiceImpl();
        int res = postService.insertNewPost(post);

        System.out.println(res);
    }
}
