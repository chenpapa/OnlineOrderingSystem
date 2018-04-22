package la.chopper.mapper;

import la.chopper.domain.Staff;

public interface StaffMapper {
    int deleteByPrimaryKey(Long staffId);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Long staffId);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
}