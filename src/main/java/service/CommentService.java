package service;

import bean.Comment;

import java.util.ArrayList;

public interface CommentService {
    ArrayList<Comment> getAllCommentAndUserByPostId(int postId);
    int insertNewComment(Comment comment);
}
