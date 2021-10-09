package bean;

import java.sql.Date;

public class Post {
    private int postId;
    private User author;
    private Date postTime;
    private String postTitle;
    private String postContext;
    private Topic postTopic;
    private int viewTimes;
    private int addToFavoriteTimes;

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

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }


    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
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

    @Override
    public String toString() {
        return "Post{" +
                "postId=" + postId +
                ", author=" + author +
                ", postDate=" + postTime +
                ", postContext='" + postContext + '\'' +
                ", postTopic=" + postTopic +
                ", viewTimes=" + viewTimes +
                ", addToFavoriteTimes=" + addToFavoriteTimes +
                '}';
    }
}
