package cn.it.shop.action;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.Customer;

@Controller
@Scope("prototype")
public class CustomerAction extends BaseAction<Customer> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int page;// ��ҳҳ��
	private int rows;// ��ҳ����
	// ��ѯ���������Ŀͻ�
	public String queryCustomer() {
		pageMap = new HashMap<String, Object>();
		System.out.println("page:" + page);
		List<Customer> customerList =customerService.queryCustomer("", page, rows);
		Long count=customerService.getCount("");
		pageMap.put("rows", customerList);
		pageMap.put("total", count);
		System.out.print("------------"+customerList.size());
		return "jsonMap";
	}
	
	public String deleteByIds(){
		System.out.println("Ҫɾ����idsΪ"+ids);
		customerService.deleteByIds(ids);
		inputStream=new ByteArrayInputStream("true".getBytes());
		return "stream";
	}
	
	public void update(){
		System.out.println("执行更新");
		customerService.update(model);
	}
	public void save(){
		System.out.println("执行保存");
		System.out.println(model.getAddress());
		
		customerService.save(model);
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	
}
