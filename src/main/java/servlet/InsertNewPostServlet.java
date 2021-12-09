package servlet;

import bean.Comment;
import bean.Post;
import bean.Topic;
import bean.User;
import service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

@WebServlet("/InsertNewPostServlet.do")
public class InsertNewPostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        int topicId = Integer.parseInt(request.getParameter("topicId"));
        String title = request.getParameter("title");
        String context = request.getParameter("context");

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

        PostServiceImpl postService = new PostServiceImpl();
        int res = postService.insertNewPost(post);
        request.getRequestDispatcher("GetAllPostByTopicIdServlet.do?topicId="+topicId).forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
