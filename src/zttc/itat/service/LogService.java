package zttc.itat.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import zttc.itat.dao.ILogDao;
import zttc.itat.model.Log;
import zttc.itat.model.Pager;
import zttc.itat.model.User;

@Service("logService")
public class LogService implements ILogService {

	@Autowired
	@Qualifier("logDao")
	private ILogDao logDao;
	
	public ILogDao getLogDao() {
		return logDao;
	}

	@Resource
	public void setLogDao(ILogDao logDao) {
		this.logDao = logDao;
	}

	@Override
	public void add(Log log) {
		// TODO Auto-generated method stub
		logDao.add(log);
	}
	
	@Override
	public Pager<Log> find() {
		return logDao.find();
	}

}
