package service;

import bean.Topic;
import mapper.TopicMapper;
import org.apache.ibatis.session.SqlSession;
import util.MybatisUtil;

import java.util.ArrayList;

public class TopicServiceImpl implements TopicService{

    @Override
    public ArrayList<Topic> getAllTopic() {
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        TopicMapper mapper = sqlSession.getMapper(TopicMapper.class);
        ArrayList<Topic> allTopic = mapper.getAllTopic();
        return allTopic;
    }
}
