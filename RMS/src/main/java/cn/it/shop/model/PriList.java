package cn.it.shop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cf_privilege_list")
public class PriList {
    private Integer id;
    private Integer privilegeMasterKey;
    private Integer privilegeAccessKey;
    private String privilegeMaster;
    private String privilegeAccess;
    private Integer toId;

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    @Column(name="PrivilegeMasterKey")
    public Integer getPrivilegeMasterKey() {
        return privilegeMasterKey;
    }
    public void setPrivilegeMasterKey(Integer privilegeMasterKey) {
        this.privilegeMasterKey = privilegeMasterKey;
    }
    @Column(name="PrivilegeAccessKey")
    public Integer getPrivilegeAccessKey() {
        return privilegeAccessKey;
    }
    public void setPrivilegeAccessKey(Integer privilegeAccessKey) {
        this.privilegeAccessKey = privilegeAccessKey;
    }

    @Column(name="PrivilegeMaster",length=50)
    public String getPrivilegeMaster() {
        return privilegeMaster;
    }
    public void setPrivilegeMaster(String privilegeMaster) {
        this.privilegeMaster = privilegeMaster;
    }
    @Column(name="PrivilegeAccess",length=50)
    public String getPrivilegeAccess() {
        return privilegeAccess;
    }
    public void setPrivilegeAccess(String privilegeAccess) {
        this.privilegeAccess = privilegeAccess;
    }
    @Column(name="toId")
    public Integer getToId() {
        return toId;
    }
    public void setToId(Integer toId) {
        this.toId = toId;
    }

}
