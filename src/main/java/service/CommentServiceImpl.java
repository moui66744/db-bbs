package service;

import bean.Comment;
import mapper.CommentMapper;
import org.apache.ibatis.session.SqlSession;
import util.MybatisUtil;

import java.util.ArrayList;

public class CommentServiceImpl implements CommentService{

    @Override
    public ArrayList<Comment> getAllCommentAndUserByPostId(int postId) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        ArrayList<Comment> allComment = mapper.getAllCommentAndUserByPostId(postId);
        for (Comment comment :
                allComment) {
            ArrayList<Comment> subComment = getSubCommentByCommentId(comment.getCommentId());
            comment.setSubComment(subComment);
        }
        return allComment;
    }

    private ArrayList<Comment> getSubCommentByCommentId(int commentId) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        ArrayList<Comment> subComment = mapper.getSubCommentByCommentId(commentId);
        return subComment;
    }

    @Override
    public int insertNewComment(Comment comment) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        int res = mapper.insertNewComment(comment);
        sqlSession.commit();
        return res;
    }
}
