package zttc.itat.service;

import zttc.itat.model.Log;
import zttc.itat.model.Pager;
import zttc.itat.model.User;

public interface ILogService {

	public void add(Log log) ;
	public Pager<Log> find();
}
