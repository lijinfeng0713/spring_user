package zttc.itat.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import zttc.itat.service.ILogService;

@Controller
@RequestMapping("/log")
public class LogController {
	
	private ILogService logService;

	public ILogService getLogService() {
		return logService;
	}

	@Resource
	public void setLogService(ILogService logService) {
		this.logService = logService;
	}
	
	@RequestMapping(value={"/logs","/"},method=RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("logs", logService.find());
		System.out.println("rizhi");
		return "user/log";
	}

}
