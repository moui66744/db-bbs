package servlet;

import bean.Post;
import bean.User;
import service.PostService;
import service.PostServiceImpl;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/PostServlet.do")
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        PostService postService = new PostServiceImpl();
        ArrayList<Post> postOfMine = postService.getPostByUserId(userId);
        request.setAttribute("PostsOfMine",postOfMine);
        request.getRequestDispatcher("MyPost.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
