package cn.it.shop.service;

import java.util.List;


public interface BaseService<T>{
    //����
	boolean save(T t);
	//�޸�
	boolean update(T t);
	// ɾ��ʵ��
	boolean delete(T t);
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
