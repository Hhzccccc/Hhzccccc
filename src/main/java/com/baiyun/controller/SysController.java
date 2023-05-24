package com.baiyun.controller;


import com.baiyun.entity.User;
import com.baiyun.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SysController {
    @Autowired
    private UserService userService;

    /*
     * 跳转管理菜单   90-其他
     * */
    @RequestMapping("toMenuManager")
    public String toMenuManager() {
        return "view/menu/menuManager";
    }

    /*
     * 跳转加载菜单管理左边的菜单树  --无用
     * */
    @RequestMapping("toMenuLeft")
    public String toMenuLeft() {
        return "view/menu/menuLeft";
    }

    /*
     * 跳转加载菜单管理左边的增删改  91-其他
     * */
    @RequestMapping("toMenuRight")
    public String toMenuRight() {
        return "view/menu/menuRight";
    }
    /*
     * 跳转加载角色  角色菜单管理  41-其他
     * */
    @RequestMapping("toLoadAllRole")
    public String toLoadAllRole() {
        return "view/role/roleManager";
    }
    /*
     * 跳转加载用户 14-系统管理
     * */
    @RequestMapping("toLoadAllUser")
    public String toLoadAllUser() {
        return "view/user/userManager";
    }

    /*
     * 跳转加载doctor.html  医生管理 42-其他
     * */
    @RequestMapping("toDoctor")
    public String toDoctor() {
        return "view/center/doctor";
    }
    /*
     * 跳转加载departments.html  科室管理 43-其他
     * */
    @RequestMapping("toDepartments")
    public String toDepartments() {
        return "view/center/departments";
    }
    /*
     * 跳转加载registeredtype.html  挂号类型管理  88-其他
     * */
    @RequestMapping("toRegisteredType")
    public String toRegisteredtype() {
        return "view/center/registeredType";
    }

    /*
     * 跳转加载icon.html   标签图标浏览 44-其他
     * */
    @RequestMapping("icon")
    public String icon() {
        return "view/center/icon";
    }

    /*
     * 跳转加载type.html   药品类型管理 45-其他
     * */
    @RequestMapping("toType")
    public String toType() {
        return "view/center/type";
    }
    /*
     * 跳转加载skull.html  经办人管理   46-其他
     * */
    @RequestMapping("toSkull")
    public String toSkull() {
        return "view/center/skull";
    }
    /*
     * 跳转加载warehuose.html   仓库管理 89-其他
     * */
    @RequestMapping("toWarehuose")
    public String toWarehuose() {
        return "view/center/warehuose";
    }

    /*
     * 跳转加载supplyManage.html4  无
     * */
    @RequestMapping("toSupplyManage")
    public String toSupplyManage() {
        return "view/center/supplyManage";
    }
    /*
     * 跳转加载supply.html    药房管理 47-其他
     * */
    @RequestMapping("toSupply")
    public String toSupply() {
        return "view/center/supply";
    }
    /*
     * 跳转加载unit.html    单位管理   48-其他
     * */
    @RequestMapping("toUnit")
    public String toUnit() {
        return "view/center/unit";
    }

    /*
     * 跳转加载updateLogin.html
     * */
    @RequestMapping("toUpdateLogin")
    public String toUpdateLogin(User user, Integer userid, Model model) {
        List<User> users = userService.updateLogin(user);
        model.addAttribute("usersLogin",users);
        return "view/user/updateLogin";
    }
    /*
     * 跳转加载projectTypeManage.html  项目总揽  39-医生管理
     * */
    @RequestMapping("toProjectTypeManage")
    public String toProjectTypeManage() {
        return "view/center/projectTypeManage";
    }
    /*
     * 跳转加载paiban.html  医生排版
     * */
    @RequestMapping("toPaiban")
    public String toPaiban() {
        return "view/center/paiban";
    }
    /*
     * 跳转加载drugdictionary.html
     * */
    @RequestMapping("toDrugdictionary")
    public String toDrugdictionary() {
        return "view/center/drugdictionary";
    }
    /*
     * 跳转加载main.html
     * */
    @RequestMapping("toMain")
    public String toMain() {
        return "view/main/main";
    }
    /*
     * 跳转加载reportManage.html
     * */
    @RequestMapping("toReportFinance")
    public String toReportFinance() {
        return "view/finance/reportManage";
    }

    /*
     * 跳转加载zhuYuanManage.html
     * */
    @RequestMapping("toZhuYaunManage")
    public String toZhuYaunManage() {
        return "view/finance/zhuYuanManage";
    }
    /*
     * 跳转加载zhuYuanManage.html
     * */
    @RequestMapping("toBingYear")
    public String toBingYear() {
        return "view/finance/reportBing";
    }
    /*
     * 跳转加载zhuYuanBing.html
     * */
    @RequestMapping("toBing2")
    public String toBing2() {
        return "view/finance/zhuYuanBing";
    }
    /*
     * 跳转加载doctorDuibi.html
     * */
    @RequestMapping("toDoctorDuibi")
    public String toDoctorDuibi() {
        return "view/finance/doctorDuibi";
    }

    /*
     * 跳转加载current.html   今日门诊统计
     * */
    @RequestMapping("toCurrent")
    public String toCurrenti() {
        return "view/finance/current";
    }
}
