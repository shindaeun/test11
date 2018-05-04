package shindaeun.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import shindaeun.service.EmpService;



@Controller
public class EmpController {
	
	@Resource(name = "empService")
	private EmpService empService;
	
	@RequestMapping(value="/empList.do")
	public String selectEmpList(ModelMap model) throws Exception{
		List<?> list=empService.selectEmpList();
		model.addAttribute("resultList",list);
		return "emp/empList";
	}
	

}
