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
	
	private Class clazz; // clazz中存储了子类当前操作实体类型
	public BaseServiceImpl() {
		// 如果子类调用当前构造方法,this代表的是子类对象
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		clazz = (Class) type.getActualTypeArguments()[0];
	}
	protected BaseDao baseDao;   // baseDao=categoryDao || baseDao=accountDao || baseDao=forderDao
	
	@PostConstruct   // init方法是在构造方法与set注入之后执行, 也就是XML的: init-method=""
	public void init() throws Exception{
		// 1: 根据具体的泛型, 获取相应的Field字段, categoryDao
		String clazzName=clazz.getSimpleName();
		String clazzDaoName=clazzName.substring(0,1).toLowerCase() + clazzName.substring(1) + "Dao";
		Field clazzField=this.getClass().getSuperclass().getDeclaredField(clazzDaoName);
		// 2: 获取baseDao Filed字段
		Field baseField=this.getClass().getSuperclass().getDeclaredField("baseDao");
		// 3: 把categoryDao的值赋值给baseDao
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
