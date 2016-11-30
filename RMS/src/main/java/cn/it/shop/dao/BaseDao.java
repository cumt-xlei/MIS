package cn.it.shop.dao;

import java.util.List;


public interface BaseDao<T>{

	void save(T t);

	void update(T t);
	
	// ɾ��ʵ��
	void delete(T t);
	//����IDɾ��ʵ��
	void delete(int id);	
	
	void delete(String username);
	
	// ������ѯ��ǰ����, ��֧�ּ�����ѯ
	List<T> query();
	//����ID����ʵ��
	T get(int id);
	List<T> query(int page, int rows);
	Long count();
	public int getAllRowCount(String hql);

}
