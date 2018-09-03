package la.chopper.web;

import la.chopper.domain.Detail;
import la.chopper.service.DetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author chentao
 */
@Controller
@RequestMapping("detail")
public class DetailController extends BaseController {

    private DetailService detailService;

    @Autowired
    public void setDetailService(DetailService detailService) {
        this.detailService = detailService;
    }

    @RequestMapping(value = "/addDetail", method = RequestMethod.POST)
    public ModelAndView addDetail(Detail detail) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("success");
        if (detailService.insertDetail(detail)) {
            return mav;
        } else {
            mav.setViewName("fail");
        }
        return mav;
    }

    @RequestMapping("/selectDetail/{orderId}")
    @ResponseBody
    public List<Detail> selectDetailByOrderId(@PathVariable("orderId") Long orderId) {
        return detailService.selectDetailByOrderId(orderId);
    }

    @RequestMapping("/deleteDetail/{orderId}")
    public boolean deleteDetail(@PathVariable("orderId") Long orderId) {
        return detailService.deleteDetailByOrderId(orderId);
    }
}
