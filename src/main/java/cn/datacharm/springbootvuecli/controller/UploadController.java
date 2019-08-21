package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.service.UserService;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * @author Herb Fei
 * @description 上传控制器
 * @date 2019-07-04
 */
@RestController
public class UploadController {
    @Autowired
    UserService userService;

    private Integer getId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return  principal.getId();
    }

    @PostMapping("/upload")
    public String upload(MultipartFile file){
        if (file.isEmpty()) {
            return "上传失败，请选择文件";
        }
        String fileName = System.currentTimeMillis()+file.getOriginalFilename();

        File dest = null;
        String os = System.getProperty("os.name");

        if (os.toLowerCase().startsWith("win")) {
            String path = "G:"+File.separator+"img"+File.separator;
            dest= new File(path + fileName);
        }else {
            String path = "/webapps/img/";
            dest= new File(path + fileName);
        }

        try {
            file.transferTo(dest);
            //数据库中存储路径  访问 upload/** -> 本地文件
            String src = "/api/upload/"+fileName;
            System.out.println(src);
            userService.savePortrait(getId(),src);
            return src;
        } catch (IOException e) {
            return "error";
        }


    }
}
