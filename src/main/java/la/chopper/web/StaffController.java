package la.chopper.web;

import la.chopper.domain.Staff;
import la.chopper.service.StaffService;
import la.chopper.utils.CommonConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/staff")
public class StaffController extends BaseController {

    private StaffService staffService;

    @Autowired
    public void setStaffService(StaffService staffService) {
        this.staffService = staffService;
    }

    @RequestMapping("/register")
    public String register() {
        return "staff/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(HttpServletRequest request, Staff staff) {
        staff.setStaffRestaurant(new Long("123"));
        staff.setStaffAuthority(false);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/success");
        if (staffService.register(staff)) {
            setSessionStaff(request, staff);
            return mav;
        } else {
            mav.setViewName("/staff/register");
            return mav;
        }
    }

    @RequestMapping("/login")
    public String login() {
        return "staff/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest request, Staff staff) {
        Staff dbStaff = staffService.getStaffById(staff.getStaffId());
        ModelAndView mav = new ModelAndView();
        mav.setViewName("staff/login");
        if (dbStaff == null) {
            mav.addObject("errorMsg", "员工id不存在");
        } else if (!dbStaff.getStaffPassword().equals(staff.getStaffPassword())) {
            mav.addObject("errorMsg", "员工密码不正确");
        } else {
            String toUrl = (String) request.getSession().getAttribute(CommonConstant.LOGIN_TO_URL);
            request.getSession().removeAttribute(CommonConstant.LOGIN_TO_URL);
            mav.setViewName("success");
        }
        return mav;
    }
}
