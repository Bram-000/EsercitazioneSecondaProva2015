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
    List<Commenti> commenti = new ArrayList<Commenti>();

    public MainController() {
        eventi.add(new Eventi("padova","2010-10-10"));
        eventi.add(new Eventi("roma","2010-10-10"));
        eventi.add(new Eventi("milano","2010-10-10"));
        eventi.add(new Eventi("venezia","2010-10-10"));
        eventi.add(new Eventi("verona","2010-10-10"));
        eventi.add(new Eventi("padova","2010-10-10"));
        commenti.add(new Commenti("Bell'evento",5));
        commenti.add(new Commenti("Schifo di Evento",1));
    }
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap map){
        map.put("eventi",eventi);
        map.put("commenti",commenti);
        return "paginaIniziale";
    }
    
    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String login(ModelMap map){
        return "login";
    }
    
    @RequestMapping(value="/profilo",method= RequestMethod.GET)
    public String profilo(ModelMap map){
        return "profiloUtente";
    }
}