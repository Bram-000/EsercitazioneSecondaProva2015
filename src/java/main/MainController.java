package main;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
    
    //List<Eventi> eventi = new ArrayList<Eventi>();

    public MainController() {
        
    }
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap map){
        return "paginaIniziale";
    }
    
    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String jora(ModelMap map){
        return "login";
    }
}