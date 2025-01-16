package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import web.service.MainService;


@RestController
@RequestMapping("/main")
public class MainController {

    @Autowired private MainService mainService;

}
