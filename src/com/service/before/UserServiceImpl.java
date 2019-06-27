package com.service.before;

import com.dao.UserDao;
import com.po.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    @Override
    public String login(Buser buser, Model model, HttpSession session,String code) {
        if (!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
            model.addAttribute("msg", "验证码错误！");
            return "before/login";
        }
        Buser ruser = null;
        List<Buser> list = userDao.login(buser);
        if (list.size() > 0) {
            ruser = list.get(0);
        }
        if(ruser != null) {
            session.setAttribute("bruser", ruser);
            return "forward:/before";
        }else {
            model.addAttribute("msg","用户名或密码错误！");
            return "before/login";
        }
    }
}
