package la.chopper.service;

import la.chopper.domain.User;
import la.chopper.exception.UserExistException;

public interface UserService {

    void register(User user) throws UserExistException;

    User getUserByPhone(String userPhone);
}
