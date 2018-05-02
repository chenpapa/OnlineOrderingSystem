package la.chopper.web;

import la.chopper.domain.Goods;
import la.chopper.service.GoodsService;
import la.chopper.utils.RandomPictureName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController extends BaseController {

    private GoodsService goodsService;

    @Autowired
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping(value = "/addGoods", method = RequestMethod.POST)
    public ModelAndView addGoods(HttpServletRequest request, Goods goods, MultipartFile file) {
        ModelAndView mav = new ModelAndView();
        goods.setGoodsCatalogId((long) request.getSession().getAttribute("CATALOG_CONTEXT"));
        goods.setGoodsPic(null);
        goods.setGoodsStatus(true);
        mav.setViewName("success");
        if (!file.isEmpty()) {
            try {
                String pathName = "d:/images/restaurant/" + request.getSession().getAttribute("restaurantId")
                        + "/" + "goods/" + RandomPictureName.getUUID();
                file.transferTo(new File(pathName));
                goods.setGoodsPic("http://127.0.0.1:8080/" + pathName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (goodsService.insertGoods(goods)) {
            return mav;
        } else {
            mav.setViewName("fail");
        }
        return mav;
    }

    @RequestMapping(value = "/goodsList", method = RequestMethod.POST)
    @ResponseBody
    public List<Goods> selectGoodsByCatalogId(Long catalogId) {
        return goodsService.selectGoodsBycatalogId(catalogId);
    }
}
