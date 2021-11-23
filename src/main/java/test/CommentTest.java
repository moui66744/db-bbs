package test;

import bean.Comment;
import bean.User;
import service.CommentServiceImpl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class CommentTest {
    public static void main(String[] args) {
        int replyId = 0;
        int postId = 1;
        int userId = 1;
        String context = "test";

        User user = new User();
        user.setUserId(userId);

        Comment comment = new Comment();
        if (replyId != 0) {
            Comment replyComment = new Comment();
            replyComment.setCommentId(replyId);
            comment.setReplyComment(replyComment);
        }
        comment.setPostId(postId);
        comment.setUser(user);
        comment.setContext(context);
        Timestamp ts = new Timestamp(System.currentTimeMillis());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        comment.setCommentTime(df.format(ts));

        System.out.println(comment);

        CommentServiceImpl commentService = new CommentServiceImpl();
        int res = commentService.insertNewComment(comment);
        System.out.println(res);
    }
}
