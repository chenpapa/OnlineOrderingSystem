package la.chopper.web;

import la.chopper.domain.Common;
import la.chopper.service.impl.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/common")
public class CommonController extends BaseController {

    private CommonServiceImpl commonServiceImplImpl;

    @Autowired
    public void setCommonServiceImplImpl(CommonServiceImpl commonServiceImplImpl) {
        this.commonServiceImplImpl = commonServiceImplImpl;
    }

    @RequestMapping(value = "/addCommon", method = RequestMethod.POST)
    public ModelAndView addCommon(Common common) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("success");
        if (commonServiceImplImpl.insertCommon(common)) {
            return mav;
        } else {
            mav.setViewName("fail");
        }
        return mav;
    }

    @RequestMapping("/selectCommonByGoodsId")
    @ResponseBody
    public Common selectCommonByGoodsId(Long goodsId) {
        return commonServiceImplImpl.selectCommonByCommonGoods(goodsId);
    }

    @RequestMapping("/deleteCommonById")
    public void deleteCommonById(Long commonId) {
        commonServiceImplImpl.deleteCommonById(commonId);
    }
}
