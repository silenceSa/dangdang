package com.yidu.dangdang.chat.domain;

/**
 * Created by pz on 16/11/23.
 */
public class ToServerMessageMine {
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    
    /**
     * 头像地址
     */
    private String avatar;
    private String id;
    private String content;
    private String username;
}
