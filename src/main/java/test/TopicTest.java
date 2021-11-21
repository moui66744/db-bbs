package test;

import bean.Topic;
import service.TopicService;
import service.TopicServiceImpl;

import java.util.ArrayList;

public class TopicTest {
    public static void main(String[] args) {
        TopicServiceImpl topicService = new TopicServiceImpl();
        ArrayList<Topic> allTopic = topicService.getAllTopic();
        for (Topic topic:
             allTopic) {
            System.out.println(topic);
        }
    }
}
