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
        return allComment;
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
