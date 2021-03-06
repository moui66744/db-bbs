package mapper;

import bean.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface CommentMapper {
    ArrayList<Comment> getAllCommentAndUserByPostId(int postId);
    ArrayList<Comment> getSubCommentByCommentId(int commentId);
    int insertNewComment(@Param("comment") Comment comment);
}
