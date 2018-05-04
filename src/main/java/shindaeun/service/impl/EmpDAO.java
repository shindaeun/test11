package shindaeun.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("empDAO")
public class EmpDAO extends EgovAbstractDAO {

	public List<?> selectEmpList() {
		return list("empDAO.selectEmpList");
	}

	
}
