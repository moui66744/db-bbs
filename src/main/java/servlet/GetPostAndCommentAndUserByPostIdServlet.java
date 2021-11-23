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
import java.util.ArrayList;

@WebServlet("/GetPostAndCommentAndUserByPostIdServlet.do")
public class GetPostAndCommentAndUserByPostIdServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int postId = Integer.parseInt(request.getParameter("postId"));

        PostServiceImpl postService = new PostServiceImpl();
        Post post = postService.getPostByPostId(postId);
        request.setAttribute("post", post);

        CommentServiceImpl commentService = new CommentServiceImpl();
        ArrayList<Comment> allComment = commentService.getAllCommentAndUserByPostId(postId);
        request.setAttribute("allComment", allComment);
//        request.getRequestDispatcher("MyPost.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
