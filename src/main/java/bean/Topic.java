package bean;

public class Topic {
    private int topicId;
    private String topicName;
    private String topicDetail;

    public Topic(int topicId, String topicName, String topicDetail) {
        this.topicId = topicId;
        this.topicName = topicName;
        this.topicDetail = topicDetail;
    }

    public int getTopicId() {
        return topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public String getTopicDetail() {
        return topicDetail;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public void setTopicDetail(String topicDetail) {
        this.topicDetail = topicDetail;
    }
}
