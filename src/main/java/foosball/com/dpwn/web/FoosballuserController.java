package foosball.com.dpwn.web;
import foosball.com.dpwn.model.Foosballuser;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/foosballusers")
@Controller
@RooWebScaffold(path = "foosballusers", formBackingObject = Foosballuser.class)
@RooWebJson(jsonObject = Foosballuser.class)
public class FoosballuserController {
}
