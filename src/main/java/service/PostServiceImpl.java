package service;

import bean.Post;
import mapper.PostMapper;
import org.apache.ibatis.session.SqlSession;
import util.MybatisUtil;

import java.util.ArrayList;

public class PostServiceImpl implements PostService{
    @Override
    public ArrayList<Post> getAllPost() {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        PostMapper postMapper = sqlSession.getMapper(PostMapper.class);
        ArrayList<Post> allPost = postMapper.getAllPost();
        return allPost;
    }

    @Override
    public ArrayList<Post> getAllPostByTopicId(int topicId) {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        PostMapper postMapper = sqlSession.getMapper(PostMapper.class);
        ArrayList<Post> allPost = postMapper.getAllPostByTopicId(topicId);
        return allPost;
    }
}
