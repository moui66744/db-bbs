package bean;

public class Topic {
    private int topicId;
    private String topicName;
    private String detail;

    public int getTopicId() {
        return topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public String getDetail() {
        return detail;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "Topic{" +
                "topicId=" + topicId +
                ", topicName='" + topicName + '\'' +
                ", detail='" + detail + '\'' +
                '}';
    }
}
