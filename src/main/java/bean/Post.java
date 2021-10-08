package bean;

import java.sql.Date;

public class Post {
    private int postId;
    private User author;
    private Date postDate;
    private String postContext;
    private Topic postTopic;
    private int viewTimes;
    private int addToFavoriteTimes;

    public Post(int postId, User author, Date postDate, String postContext, Topic postTopic, int viewTimes, int addToFavoriteTimes) {
        this.postId = postId;
        this.author = author;
        this.postDate = postDate;
        this.postContext = postContext;
        this.postTopic = postTopic;
        this.viewTimes = viewTimes;
        this.addToFavoriteTimes = addToFavoriteTimes;
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

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public String getPostContext() {
        return postContext;
    }

    public void setPostContext(String postContext) {
        this.postContext = postContext;
    }

    public Topic getPostTopic() {
        return postTopic;
    }

    public void setPostTopic(Topic postTopic) {
        this.postTopic = postTopic;
    }

    public int getViewTimes() {
        return viewTimes;
    }

    public void setViewTimes(int viewTimes) {
        this.viewTimes = viewTimes;
    }

    public int getAddToFavoriteTimes() {
        return addToFavoriteTimes;
    }

    public void setAddToFavoriteTimes(int addToFavoriteTimes) {
        this.addToFavoriteTimes = addToFavoriteTimes;
    }
}
