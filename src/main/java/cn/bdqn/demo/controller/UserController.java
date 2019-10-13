package cn.bdqn.demo.controller;

import cn.bdqn.demo.pojo.User;
import cn.bdqn.demo.service.UserService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.misc.Request;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/getAll")
    public String getAll(){
        List<User> user  = userService.getAll();
        return JSON.toJSONString(user);
    }
    @RequestMapping("/toIndex")
    public String toIndex(){
        return "index";
    }

    @ResponseBody
    @RequestMapping("/del/{id}")
    public String del(@PathVariable Integer id) {
        Integer res=userService.del(id);
        return JSON.toJSONString(res);
    }

    @RequestMapping("/toAdd")
    public String toAdd(){
        return "add";
    }
    @RequestMapping("/add")
    public String add(HttpServletRequest request, User user) {
        Integer res=userService.add(user);
        if(res>0) {
            return "index";
        }else {
            return "add";
        }
    }
    /**
     * 修改第一步
     * @param id
     * @return
     */
    @RequestMapping("/toUpdate/{id}")
    public String toUpdate(@PathVariable Integer id,HttpServletRequest request){
        User user=userService.getId(id);
        request.setAttribute("user",user);
        return "update";
    }
    /**
     * 修改第二步
     * @paramid
     * @return
     */
    @RequestMapping("/update")
    public String update(User user){
      /*  int id = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");*/
       /* String birthday = request.getParameter("birthday");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");*/
       /* User user = new User();
        user.setId(id);
        user.setUserName(userName);*/
       /* user.setBirthday(birthday);
        user.setPhone(phone);
        user.setAddress(address);*/
        Integer res=userService.update(user);
        if(res>0) {
            return "index";
        }else {
            return "update";
        }
    }
}
