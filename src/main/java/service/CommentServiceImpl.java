package service;

import bean.Comment;
import mapper.CommentMapper;
import org.apache.ibatis.session.SqlSession;
import util.MybatisUtil;

import java.util.ArrayList;

public class CommentServiceImpl implements CommentService{

    @Override
    public ArrayList<Comment> getAllCommentByPostId(int postId) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
        ArrayList<Comment> allComment = mapper.getAllCommentByPostId(postId);
        return allComment;
    }
}
