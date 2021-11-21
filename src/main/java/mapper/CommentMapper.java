package mapper;

import bean.Comment;

import java.util.ArrayList;

public interface CommentMapper {
    ArrayList<Comment> getAllCommentByPostId(int postId);
}
