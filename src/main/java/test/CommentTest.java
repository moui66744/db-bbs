package test;

import bean.Comment;
import service.CommentServiceImpl;

import java.util.ArrayList;

public class CommentTest {
    public static void main(String[] args) {
        CommentServiceImpl commentService = new CommentServiceImpl();
        ArrayList<Comment> allComment = commentService.getAllCommentByPostId(1);
        for (Comment comment :
                allComment) {
            System.out.println(comment);
        }
    }
}
