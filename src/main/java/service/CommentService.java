package service;

import bean.Comment;

import java.util.ArrayList;

public interface CommentService {
    ArrayList<Comment> getAllCommentByPostId(int postId);
}
