package servlet;

import bean.Post;
import bean.Topic;
import bean.User;
import service.PostService;
import service.PostServiceImpl;
import service.TopicServiceImpl;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/GetAllPostByTopicIdServlet.do")
public class GetAllPostByTopicIdServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int topicId = Integer.parseInt(request.getParameter("topicId"));
        PostService postService = new PostServiceImpl();
        ArrayList<Post> allPost = postService.getAllPostByTopicId(topicId);
        request.setAttribute("allPost", allPost);
//        request.getRequestDispatcher("MyPost.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
