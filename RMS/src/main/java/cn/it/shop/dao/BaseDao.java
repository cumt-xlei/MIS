package cn.it.shop.dao;

import java.util.List;


public interface BaseDao<T>{
    
    // ����ʵ��
	boolean save(T t);
	//�޸�ʵ��
	boolean update(T t);	
	// ɾ��ʵ��
	boolean delete(T t);
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
