package cn.it.shop.service;

import java.util.List;


public interface BaseService<T>{
	void save(T t);

	void update(T t);
	// ɾ��ʵ��
	void delete(T t);
	//����IDɾ��ʵ��
	void delete(int id);	
	//����Stringɾ��ʵ��
	void delete(String username);
	// ������ѯ��ǰ����, ��֧�ּ�����ѯ
	List<T> query();
	//����ID����ʵ��
	T get(int id);
	
	Long count();

	List<T> query(int page, int rows);

}
