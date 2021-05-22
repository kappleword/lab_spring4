package kosmo80.mvc.sp1;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class EmpLogic {
	Logger logger = Logger.getLogger(EmpLogic.class);
	private EmpDao empDao = null;
	public void setEmpDao(EmpDao empDao) {
		this.empDao = empDao;
	}

	public List<Map<String, Object>> getEmpList() {
		logger.info("getEmpList 호출 성공");
		List<Map<String, Object>> empList = null;
		empList = empDao.getEmpList();
		return empList;
	}

}
