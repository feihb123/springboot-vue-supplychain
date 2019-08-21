package cn.datacharm.springbootvuecli.entity;

import javax.persistence.*;

/**
 * @author datacharm.cn
 */
@Entity
@Table(name = "saler")
public class SalerShop {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id;
    @Column(name = "username")
    String username;
    @Column(name = "shopname")
    String shopname;
    @Column(name = "photo")
    String photo;
    @Column(name = "description")
    String description;
    @Column(name = "status")
    String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
