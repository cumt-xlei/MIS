package cn.it.shop.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.it.shop.model.Admin;

@Controller
@Scope("prototype")
public class AdminAction extends BaseAction<Admin>{


}
