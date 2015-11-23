package zttc.itat.log;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;








import zttc.itat.dao.LogDao;
import zttc.itat.model.Log;
import zttc.itat.model.User;

@Component
@Aspect
public class LogAspect {
	// @Pointcut("execution(* com.web.service.impl.*.*(..))")
	@Autowired
	private LogDao logDao;
	
	private static final Logger logger=Logger.getLogger(LogAspect.class);
	
	@After(value = "execution(* zttc.itat.service.*.*(..))")
	public void logInfo(JoinPoint jp) {
		//调用的类名
		String className = jp.getTarget().getClass().getName();
        //调用的方法名
		String methodName = jp.getSignature().getName();
		//获取请求ip    
        String ip = null;
        //用户名
        String username = "user";
        //操作时间
        String operTime = null;
		try {
			ip = InetAddress.getLocalHost().getHostAddress();
			/*UserDetails principal = (UserDetails) SecurityContextHolder
					.getContext().getAuthentication().getPrincipal();*/
			/*username = principal.getUsername();*/
			
			System.out.println("test");
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		
		String modulename=null;
		if(methodName.indexOf("save")>-1){
			modulename="存储操作";
		}else if(methodName.indexOf("update")>-1){
			modulename="更新操作";
		}else if(methodName.indexOf("delete")>-1){
			modulename="删除操作";
		}else if(methodName.indexOf("get")>-1){
			modulename="查询操作";
		}
		//控制台测试输出的信息
		logger.debug("类名："+className+"\t"+"方法名："+methodName);
        logger.debug("用户名"+username+"\t"+"用户ip："+ip+"\t"+"用户所在模块："+modulename);
        
        //日志存储到数据库
        Log log=new Log();        
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
        operTime = df.format(new Date());
        
        log.setUsername(username);
        log.setUserIP(ip);
        log.setModule("user module");
        log.setOperation(methodName);
        log.setOperTime(operTime);
        logDao.add(log);
        
        
        System.out.println(log);
	}

}
