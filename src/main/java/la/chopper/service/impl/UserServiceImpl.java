package la.chopper.service.impl;

import la.chopper.domain.User;
import la.chopper.exception.UserExistException;
import la.chopper.mapper.UserMapper;
import la.chopper.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    /**
     * 创建用户
     *
     * @param user 用户注册信息
     */
    @Override
    public void register(User user) throws UserExistException {
        User u = this.getUserByPhone(user.getUserPhone());
        if (u != null) {
            throw new UserExistException("用户名已经存在");
        } else {
            userMapper.insert(user);
        }
    }

    /**
     * 查询用户
     *
     * @param userPhone 用户手机号码
     * @return 查询结果
     */
    @Override
    public User getUserByPhone(String userPhone) {
        return userMapper.selectByPrimaryKey(userPhone);
    }
}
