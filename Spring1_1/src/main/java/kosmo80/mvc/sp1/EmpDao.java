package kosmo80.mvc.sp1;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class EmpDao {
	Logger logger = Logger.getLogger(EmpDao.class);
	
	public List<Map<String, Object>> getEmpList() {
		logger.info("getEmpList 호출 성공");
		List<Map<String, Object>> empList = null;
		
		return empList;
	}
}
