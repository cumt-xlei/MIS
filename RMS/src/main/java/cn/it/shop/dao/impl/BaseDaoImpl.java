package cn.it.shop.dao.impl;

import java.lang.reflect.ParameterizedType;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.it.shop.dao.BaseDao;
//���ξ�����Ϣ ��һ�㶼�Ǻ������õ��˹��ڵķ������������Ĳ���ֵ���Ͳ��ԣ�
@SuppressWarnings("unchecked")
//����ʶ��Dao��
@Repository("baseDao")
//�����أ��Ƽ�ʹ��
@Lazy(true)
public class BaseDaoImpl<T> implements BaseDao<T> {
	
	private Class clazz; // clazz�д洢�����൱ǰ����ʵ������
	//��ȡ����
	//???
	@Resource(name="sessionFactory")
	protected SessionFactory sessionFactory;
	
	public BaseDaoImpl(){
		ParameterizedType type=(ParameterizedType)this.getClass().getGenericSuperclass();
		clazz=(Class)type.getActualTypeArguments()[0];
		System.out.println(clazz);
	}
	protected Session getSession(){
		Session session;
		try {
		    session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
		    session = sessionFactory.openSession();
		}
		return session;
	}
	//����
	@Override
	public void save(T t) {
		System.out.println(getSession());
		getSession().save(t);		
	}                  
	//����
	@Override
	public void update(T t) {
		getSession().saveOrUpdate(t);
	}
	
	//�����ѯ��ȡ����ʵ��
	@Override
	public List<T> query() {
		String hql="FROM "+ clazz.getSimpleName();
		return (List<T>)getSession().createQuery(hql).getResultList();
	}
	//����id��ȡ
	@Override
	public T get(int id) {
		return(T)getSession().get(clazz, id);
	}


	@Override
	public void delete(T t) {
		getSession().delete(t);
	}
	
	@Override
	public void delete(String username) {
		getSession()
		.createQuery("delete " + clazz.getSimpleName()
			+ " en where en.username = ?0")
		.setParameter("0" , username)
		.executeUpdate();		
	}
	//����Idɾ��
	@Override
	public void delete(int id) {
		getSession()
		.createQuery("delete " + clazz.getSimpleName()
			+ " en where en.id = ?0")
		.setParameter("0" , id)
		.executeUpdate();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<T> query(int page, int rows) {
		String hql="FROM " + clazz.getSimpleName() ;
		return (List<T>)getSession().createQuery(hql)
				.setFirstResult(rows*(page-1))
				.setMaxResults(rows)
				.getResultList();
		
		
	}
	@Override
	public Long count() {
		String hql="select count(*) FROM " + clazz.getSimpleName();
		return (Long) getSession().createQuery(hql).uniqueResult();
	}
	
	
	
	
	@Override
	public int getAllRowCount(String hql) {
	System.out.println("hql="+hql);
	return getSession().createQuery(hql).list().size();
	}

}
