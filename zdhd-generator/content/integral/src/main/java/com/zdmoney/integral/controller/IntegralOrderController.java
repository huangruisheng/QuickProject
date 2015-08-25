package com.zdmoney.integral.controller;

import com.zdmoney.zdhd.action.view.TableView;
import com.zdmoney.zdhd.service.EntityService;
import com.zdmoney.integral.base.controller.BaseController;
import com.zdmoney.integral.model.IntegralOrder;
import com.zdmoney.integral.service.IntegralOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/" + IntegralOrderController.NAME)
public class IntegralOrderController {

    public static final String NAME = "integralOrder";

    @Resource
    private IntegralOrderService integralOrderService;

    private BaseController baseController = new BaseController() {
        @Override
        public String getIndexTilesName() {
            return NAME;
        }

        @Override
        public EntityService getEntityService() {
            return integralOrderService;
        }

        @Override
        public Class<?> getEntityClass() {
            return IntegralOrder.class;
        }
    };

    @RequestMapping
    public String index(Model model) {
        return baseController.index();
    }

    @RequestMapping(produces = "application/json")
    @ResponseBody
    public TableView list(HttpServletRequest request) {
        return baseController.list(request);
    }

    @RequestMapping(value = "/checkNotExist", produces = "application/json")
    @ResponseBody
    public Boolean checkNotExist(@RequestParam(required = false) Integer id, @RequestParam String prop, @RequestParam String value) {
        return baseController.checkNotExist(id, prop, value);
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public Boolean save(HttpServletRequest request) {
        baseController.save(request);
        return true;
    }

}