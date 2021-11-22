package bean;

import java.sql.Date;

public class Post {
    private int postId;
    private User author;
    private Topic postTopic;
    private String title;
    private String context;
    private String postTime;
    private int viewTimes;
    private int addToFavTimes;

    @Override
    public String toString() {
        return "Post{" +
                "postId=" + postId +
                ", author=" + author +
                ", postTopic=" + postTopic +
                ", title='" + title + '\'' +
                ", context='" + context + '\'' +
                ", postTime='" + postTime + '\'' +
                ", viewTimes=" + viewTimes +
                ", addToFavTimes=" + addToFavTimes +
                '}';
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public Topic getPostTopic() {
        return postTopic;
    }

    public void setPostTopic(Topic postTopic) {
        this.postTopic = postTopic;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getPostTime() {
        return postTime;
    }

    public void setPostTime(String postTime) {
        this.postTime = postTime;
    }

    public int getViewTimes() {
        return viewTimes;
    }

    public void setViewTimes(int viewTimes) {
        this.viewTimes = viewTimes;
    }

    public int getAddToFavTimes() {
        return addToFavTimes;
    }

    public void setAddToFavTimes(int addToFavTimes) {
        this.addToFavTimes = addToFavTimes;
    }
}
