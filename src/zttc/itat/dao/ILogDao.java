package zttc.itat.dao;

import zttc.itat.model.Log;
import zttc.itat.model.Pager;
import zttc.itat.model.User;

public interface ILogDao {
	
	public void add(Log log);

	public Pager<Log> find();

}
