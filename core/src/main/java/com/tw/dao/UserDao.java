package com.tw.dao;

import com.tw.Util.HibernateUtil;
import com.tw.entity.User;
import org.hibernate.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Zlien on 7/27/15.
 */

@Repository
public class UserDao {

    public List<User> getUsersByName(String name) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();

        session.beginTransaction();

        String hql = "from User where name=:name";
        Query query = session.createQuery(hql);
        query.setString("name", name);

        List<User> users = query.list();

        session.getTransaction().commit();

        return users;
    }

    public User getUserById(int id) {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();

        session.beginTransaction();

        String hql = "from User where id=:id";
        Query query = session.createQuery(hql);
        query.setInteger("id", id);

        User user = (User) query.list().get(0);

        session.getTransaction().commit();

        return user;
    }

    public List<User> getAllUsers() {

        Session session = HibernateUtil.getSessionFactory().getCurrentSession();

        session.beginTransaction();

        Query query = session.createQuery("from User");
        List<User> userList = query.list();

        session.getTransaction().commit();

        return userList;
    }

    public void createUser(User user) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();

        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
    }

    public void deleteUser(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();

        session.beginTransaction();

        User user = (User) session.load(User.class, id);

        session.delete(user);
        session.getTransaction().commit();
    }

    public void updateUser(User user) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();

        session.beginTransaction();

        String hql = "update User t set t.name=:name, password=:password where id=:id";
        Query query = session.createQuery(hql);
        query.setString("name", user.getName());
        query.setString("password", user.getPassword());
        query.setInteger("id", user.getId());

        query.executeUpdate();

        session.getTransaction().commit();
    }
}