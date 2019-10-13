package cn.bdqn.demo.mapper;


import cn.bdqn.demo.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
public interface UserMapper {
    List<User> getAll();
    Integer del(@Param("id") Integer id);

    /**
     * 添加
     */
    Integer add(User user);
    /*
	 * 修改第一步
	 */
    User getId(@Param("id") Integer id);
    /*
    * 修改第二部
    */
    Integer update(User user);
/*
    update smbms_user SET userName=#{userName},gender=#{gender},birthday=#{birthday},phone=#{phone},address=#{address},userRole=#{userRole} where id={id}
*/

}
