package main;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
    
    List<Eventi> eventi = new ArrayList<Eventi>();

    public MainController() {
        eventi.add(new Eventi("padova","2010-10-10"));
    }
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap map){
        map.put("primo",eventi);
        return "paginaIniziale";
    }
    
    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String jora(ModelMap map){
        return "login";
    }
}