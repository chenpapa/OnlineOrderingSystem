package la.chopper.mapper;

import la.chopper.domain.User;

public interface UserMapper {
    int deleteByPrimaryKey(String userPhone);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userPhone);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}