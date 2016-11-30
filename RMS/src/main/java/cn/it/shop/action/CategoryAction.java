package cn.it.shop.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import cn.it.shop.model.Category;
@Controller
@Scope("prototype")
public class CategoryAction extends BaseAction<Category>{
	
	private static final long serialVersionUID = 1L;
	//≤È—Ø
	public String query(){
		request.put("categoryList", categoryService.query());
		session.put("categoryList", categoryService.query());
		application.put("categoryList", categoryService.query());
		return "jsonList";
	}
	public String save(){
		model.setType("–›œ–");
		model.setHot(true);
		categoryService.save(model);
		return "index";
	}
	public String delete(){
		categoryService.delete(1);
		return "index";
	}
	public String update(){
		model=categoryService.get(1);
		System.out.println(model.getId());
		model.setId(1);
		model.setType("…ÃŒÒ");
		model.setHot(false);
		categoryService.update(model);;
		return "index";
	}
}
