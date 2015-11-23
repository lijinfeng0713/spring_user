package zttc.itat.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import zttc.itat.model.Log;
import zttc.itat.model.Pager;
import zttc.itat.model.SystemContext;
import zttc.itat.model.User;

@Repository("logDao")
public class LogDao extends HibernateDaoSupport implements ILogDao {

	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void add(Log log) {
		this.getHibernateTemplate().save(log);
	}
	
	public Pager<Log> find() {
		int size = SystemContext.getSize();
		int offset = SystemContext.getOffset();
		Query query = this.getSession().createQuery("from Log");
		query.setFirstResult(offset).setMaxResults(size);
		List<Log> datas = query.list();
		Pager<Log> us = new Pager<Log>();
		us.setDatas(datas);
		us.setOffset(offset);
		us.setSize(size);
		long total = (Long)this.getSession()
					.createQuery("select count(*) from Log")
					.uniqueResult();
		us.setTotal(total);
		return us;
	}

}
