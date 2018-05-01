package la.chopper.service;

import la.chopper.domain.Staff;

public interface StaffService {

    boolean register(Staff staff);

    Staff getStaffById(Long staffId);
}
