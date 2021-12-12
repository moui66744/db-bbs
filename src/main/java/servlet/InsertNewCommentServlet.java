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

@WebServlet("/InsertNewCommentServlet.do")
public class InsertNewCommentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ! 前端要求：如果是第一级评论，replyId应该为0
        // ! 暂时只实现了二级评论显示，没有用递归查找
        int replyId = Integer.parseInt(request.getParameter("replyId"));
        int postId = Integer.parseInt(request.getParameter("postId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        String context = request.getParameter("context");

        User user = new User();
        user.setUserId(userId);

        Comment comment = new Comment();
        if (replyId != 0) {
            Comment supComment = new Comment();
            supComment.setCommentId(replyId);
            comment.setSupComment(supComment);
        }
        comment.setPostId(postId);
        comment.setUser(user);
        comment.setContext(context);
        Timestamp ts = new Timestamp(System.currentTimeMillis());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        comment.setCommentTime(df.format(ts));

        CommentServiceImpl commentService = new CommentServiceImpl();
        int res = commentService.insertNewComment(comment);
        request.getRequestDispatcher("GetPostAndCommentAndUserByPostIdServlet.do?postId="+postId).forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
