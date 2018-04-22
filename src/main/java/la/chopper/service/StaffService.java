package la.chopper.service;

import la.chopper.domain.Staff;
import la.chopper.mapper.StaffMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaffService {

    private StaffMapper staffMapper;

    @Autowired
    public void setStaffMapper(StaffMapper staffMapper) {
        this.staffMapper = staffMapper;
    }

    /**
     * 注册餐厅员工
     *
     * @param staff
     * @return
     */
    public Boolean register(Staff staff) {
        if (staff != null && staffMapper.insert(staff) >= 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 餐厅员工登录
     *
     * @param staffId
     * @return
     */
    public Staff getStaffById(Long staffId) {
        return staffMapper.selectByPrimaryKey(staffId);
    }
}
