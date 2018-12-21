package cn.cosycloud.CanteenMS.entity;


import javax.persistence.*;

@Entity
@Table(name = "t_user")
public class UserEntity {


    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private String userId;

    @Column
    private String userName;

    @Column
    private String password;

    @Column
    private String userLevelId;

    @Column
    private String derpartmentId;


    public String getDerpartmentId() {
        return derpartmentId;
    }

    public void setDerpartmentId(String derpartmentId) {
        this.derpartmentId = derpartmentId;
    }


    public String getUserLevelId() {
        return userLevelId;
    }

    public void setUserLevelId(String userLevelId) {
        this.userLevelId = userLevelId;
    }



    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



}
