
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    
    //List<Eventi> eventi = new ArrayList<Eventi>();

    public MainController() {
        
    }
    
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String index(ModelMap map){
        return "index";
    }
    
    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String login(ModelMap map){
        return "login";
    }
}