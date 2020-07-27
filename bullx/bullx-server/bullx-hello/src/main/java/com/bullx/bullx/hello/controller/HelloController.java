package com.bullx.bullx.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 编  号：
 * 名  称：HelloController
 * 描  述：hello测试用
 * 完成日期：2020/7/21 23:45
 * @author：felix.shao
 */
@RestController
@RequestMapping("hello")
public class HelloController {

    /**
     * http://localhost:18188/hello/zhangsan
     * @param name
     * @return
     */
    @GetMapping("/{name}")
    public String hello(@PathVariable String name){
        return "hello " + name ;
    }

}
