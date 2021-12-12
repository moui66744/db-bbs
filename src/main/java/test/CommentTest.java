package test;

import bean.Comment;
import bean.User;
import service.CommentServiceImpl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class CommentTest {
    public static void main(String[] args) {
        CommentServiceImpl commentService = new CommentServiceImpl();
        ArrayList<Comment> allComment = commentService.getAllCommentAndUserByPostId(1);
        System.out.println(allComment.size());
    }
}
