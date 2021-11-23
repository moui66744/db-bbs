package mapper;

import bean.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface CommentMapper {
    ArrayList<Comment> getAllCommentAndUserByPostId(int postId);
    int insertNewComment(@Param("comment") Comment comment);
}
