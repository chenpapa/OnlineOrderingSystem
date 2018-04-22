package la.chopper.web;

import la.chopper.domain.Common;
import la.chopper.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common")
public class CommonController extends BaseController {

    private CommonService commonService;

    @Autowired
    public void setCommonService(CommonService commonService) {
        this.commonService = commonService;
    }

    @RequestMapping(value = "/addCommon", method = RequestMethod.POST)
    public ModelAndView addCommon(Common common) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("success");
        if (commonService.insertCommon(common)) {
            return mav;
        } else {
            mav.setViewName("fail");
        }
        return mav;
    }

    @RequestMapping("/selectCommonByGoodsId")
    @ResponseBody
    public Common selectCommonByGoodsId(Long goodsId) {
        return commonService.selectCommonByCommonGoods(goodsId);
    }

    @RequestMapping("/deleteCommonById")
    public void deleteCommonById(Long commonId) {
        commonService.deleteCommonById(commonId);
    }
}
