package bean;

import java.sql.Date;
import java.util.ArrayList;

public class Comment {
    private int commentId;
    private int postId;
    private User user;
    private String context;
    private String commentTime;
    private Comment supComment;
    private ArrayList<Comment> subComment;

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", postId=" + postId +
                ", user=" + user +
                ", context='" + context + '\'' +
                ", commentTime='" + commentTime + '\'' +
                ", supComment=" + supComment +
                ", subComment=" + subComment +
                '}';
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    public Comment getSupComment() {
        return supComment;
    }

    public void setSupComment(Comment supComment) {
        this.supComment = supComment;
    }

    public ArrayList<Comment> getSubComment() {
        return subComment;
    }

    public void setSubComment(ArrayList<Comment> subComment) {
        this.subComment = subComment;
    }
}
