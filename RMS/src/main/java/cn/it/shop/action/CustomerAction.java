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
	private int page;// 分页页数
	private int rows;// 分页行数
	// 查询满足条件的客户
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
		System.out.println("要删除的ids为"+ids);
		customerService.deleteByIds(ids);
		inputStream=new ByteArrayInputStream("true".getBytes());
		return "stream";
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
