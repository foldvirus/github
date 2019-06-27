package com.controller.before;

import com.service.before.IndexService;
import com.service.before.UserCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserCenterController extends BaseBeforeController {
    @Autowired
    private UserCenterService userCenterService;
    @Autowired
    private IndexService indexService;

    @RequestMapping("/userCenter")
    public String userCenter(HttpSession session, Model model) {
        return userCenterService.userCenter(session, model);
    }

    @RequestMapping("/pinglun")
    public String pinglun(String content, Integer Spid, Model model, HttpSession session) {

        return userCenterService.pinglun(content, Spid, model, session);
    }

    @RequestMapping("/address")
    public String address(String name, String userphone, String address, Model model, HttpSession session) {
        return userCenterService.address(name, userphone, address, model, session);
    }

    /**
     * 转到评论页面
     */
    @RequestMapping("/topinglun")
    public String topinglun(Model model) {
        return userCenterService.topinglun(model);
    }

    /**
     * 转到收货地址页面
     */
    @RequestMapping("/toaddress")
    public String toaddress(Model model) {
        return userCenterService.toaddress(model);
    }

    @RequestMapping("/orderDetail")
    public String order(HttpSession session,Model model,String shop){

        return userCenterService.order(session, model, shop);

    }
}
