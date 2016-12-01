package cn.it.shop.service;

import java.util.List;


public interface BaseService<T>{
    //保存
	boolean save(T t);
	//修改
	boolean update(T t);
	// 删除实体
	boolean delete(T t);
	//根据ID删除实体
	void delete(int id);	
	//根据String删除实体
	void delete(String username);
	// 仅仅查询当前对象, 不支持级联查询
	List<T> query();
	//根据ID加载实体
	T get(int id);
	
	Long count();

	List<T> query(int page, int rows);

}
