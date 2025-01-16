package web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.model.dao.MainDao;

@Service
public class MainService {

    @Autowired private MainDao  mainDao;



}
