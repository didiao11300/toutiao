/*
 * 用户
 */

package com.fzu.pojo;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "t_user")
@DynamicInsert
@DynamicUpdate
@Getter @Setter
public class User extends BaseModel  implements UserDetails {

    @Email
    @Column(length = 30, unique = true, updatable = false)
    private String email;//邮箱，也是用户登录的账号

    @Column(name = "nick_name", length = 16, unique = true, nullable = false)
    private String nickName;//昵称

    @Column(length = 32, nullable = false)
    private String password;//密码

    @Column(length = 100)
    private String avatar;//头像

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Role role = Role.USER;//用户身份

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Status status = Status.NORMAL;//用户的状态

    @Column(nullable = false, columnDefinition = "INT default 0")
    private Integer share;//用户分享的文章数

    @Column(nullable = false, columnDefinition = "INT default 0")
    private Integer collect;//用户收藏的文章数

    @Column(nullable = false, columnDefinition = "INT default 0")
    private Integer sub;//用户订阅的独家号数

    @Column(nullable = false, columnDefinition = "INT default 0")
    private Integer attention;//用户关注的人数

    @Column(nullable = false, columnDefinition = "INT default 0")
    private Integer fans;//用户的粉丝数

    @Column(nullable = false, columnDefinition = "DOUBLE default 0", precision = 12, scale = 1)
    private Double io;//用户的货币

    @OneToOne(mappedBy = "user")
    @PrimaryKeyJoinColumn
    private UserInfo userInfo;

    /*
     * @OneToOne注释指明User与UserInfo为一对一关系，
     * @OneToOne注释五个属性：targetEntity、cascade、fetch、optional和mappedBy
     * @OneToOne注释指明UserInfo与User为一对一关系，
     * UserInfo是关系被维护端，optional = false设置user属性值不能为null，也就是身份证必须有对应的主人。
     * @JoinColumn(name = "user_id", referencedColumnName = "id", unique = true)
     * 指明UserInfo对应表的user_id列作为外键与User对应表的id列进行关联,unique = true指明user_id列的值不可重复。
     */

    /*
     * @OneToMany: 指明User与Comment关联关系为一对多关系
     * mappedBy: 定义类之间的双向关系。如果类之间是单向关系，不需要提供定义，如果类和类之间形成双向关系，我们就需要使用这个属性进行定义，
     * 否则可能引起数据一致性的问题。
     * cascade: CascadeType[]类型。该属性定义类和类之间的级联关系。定义的级联关系将被容器视为对当前类对象及其关联类对象采取相同的操作，
     * 而且这种关系是递归调用的。举个例子：User和Comment有级联关系，那么删除User时将同时删除它所对应的Comment对象。
     * 而如果Comment还和其他的对象之间有级联关系，那么这样的操作会一直递归执行下去。cascade的值只能从CascadeType.PERSIST（级联新建）、
     * CascadeType.REMOVE（级联删除）、CascadeType.REFRESH（级联刷新）、CascadeType.MERGE（级联更新）中选择一个或多个。
     * 还有一个选择是使用CascadeType.ALL，表示选择全部四项。
     * fetch: 可选择项包括：FetchType.EAGER 和FetchType.LAZY。前者表示关系类(本例是Comment类)在主类(本例是User类)加载的时候
     * 同时加载;后者表示关系类在被访问时才加载,默认值是FetchType.LAZY。
     */

    @OneToMany(mappedBy = "user")
    @OrderBy(value = "public_name ASC")
    private Set<Exclusive> exclusives = new HashSet<>();//用户拥有的独家号

    @OneToMany(mappedBy = "exclusive")
    @OrderBy(value = "public_id ASC")
    private Set<Subscribe> subscribes = new HashSet<>();//用户订阅的独家号

    @OneToMany(mappedBy = "article")
    @OrderBy(value = "id DESC")//注释指明加载Comment时按id的降序排序
    private Set<Comment> comments = new HashSet<>();//用户的评论

    @OneToMany(mappedBy = "article")
    @OrderBy(value = "id DESC")
    private Set<Collect> collects = new HashSet<>();//用户的收藏

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> result = new ArrayList<>();
        result.add(new SimpleGrantedAuthority("ROLE_USER"));
        if(Role.ADMIN.equals(this.role)) {
            result.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        }
        return result;
    }

    @Override
    public String getUsername() {
        return this.email;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return !Status.BAN.equals(this.status);
    }

    public User() { }

    public User(String email, String password, String nickName) {
        this();
        this.email = email;
        this.password = password;
        this.nickName = nickName;
    }

    public enum Role {
        USER("普通用户"),
        ADMIN("管理员");

        private String name;

        Role(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
        }
    }

    public enum Status {
        INACTIVATED("未激活"),
        NORMAL("正常"),
        BAN("封号");

        private String name;

        Status(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
        }
    }

}