package cn.it.shop.service.impl;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.enterprise.inject.Model;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import cn.it.shop.dao.AdminDao;
import cn.it.shop.dao.BaseDao;
import cn.it.shop.dao.CategoryDao;
import cn.it.shop.dao.CustomerDao;
import cn.it.shop.dao.PriListDao;
import cn.it.shop.dao.PrivilegeDao;
import cn.it.shop.dao.RoleDao;
import cn.it.shop.dao.UserDao;
import cn.it.shop.service.BaseService;
@SuppressWarnings("unchecked")
@Service("baseService")
@Lazy(true)
public class BaseServiceImpl<T> implements BaseService<T> {
	
	private Class clazz; // clazz�д洢�����൱ǰ����ʵ������
	public BaseServiceImpl() {
		// �����������õ�ǰ���췽��,this����������������
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		clazz = (Class) type.getActualTypeArguments()[0];
	}
	protected BaseDao baseDao;   // baseDao=categoryDao || baseDao=accountDao || baseDao=forderDao
	
	@PostConstruct   // init�������ڹ��췽����setע��֮��ִ��, Ҳ����XML��: init-method=""
	public void init() throws Exception{
		// 1: ���ݾ����ķ���, ��ȡ��Ӧ��Field�ֶ�, categoryDao
		String clazzName=clazz.getSimpleName();
		String clazzDaoName=clazzName.substring(0,1).toLowerCase() + clazzName.substring(1) + "Dao";
		Field clazzField=this.getClass().getSuperclass().getDeclaredField(clazzDaoName);
		// 2: ��ȡbaseDao Filed�ֶ�
		Field baseField=this.getClass().getSuperclass().getDeclaredField("baseDao");
		// 3: ��categoryDao��ֵ��ֵ��baseDao
		baseField.set(this,clazzField.get(this));
	}

	@Resource(name="categoryDao")
	protected CategoryDao categoryDao;
	@Resource(name="adminDao")
	protected AdminDao adminDao;
	@Resource(name="roleDao")
	protected RoleDao roleDao;
	@Resource(name="privilegeDao")
	protected PrivilegeDao privilegeDao;
	@Resource(name="userDao")
	protected UserDao userDao;
	@Resource(name="customerDao")
    protected CustomerDao customerDao;
	@Resource(name="priListDao")
    protected PriListDao priListDao;
	@Resource(name="userRoleDao")
	protected UserRoleDao userRoleDao;	
	
	
	@Override
	public boolean save(T t) {
	    return baseDao.save(t);
	}

	@Override
	public boolean update(T t) {
	    return baseDao.update(t);
	}

	@Override
	public boolean delete(T t) {
	    return baseDao.delete(t);
   
	}
	
	@Override
	public void delete(String username) {
		baseDao.delete(username);	
	}

	@Override
	public void delete(int id) {
		baseDao.delete(id);
	}

	@Override
	public List<T> query() {
		return (List<T>)baseDao.query();
	}

	@Override
	public T get(int id) {
		return (T)baseDao.get(id);
	}
	
	@Override
	public Long count() {
		return (Long)baseDao.count();
	}

	@Override
	public List<T> query(int page, int rows) {
		return (List<T>)baseDao.query(page,rows);
	}

}
