package foosball.com.dpwn.web;
import foosball.com.dpwn.model.UserRatings;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/userratingses")
@Controller
@RooWebScaffold(path = "userratingses", formBackingObject = UserRatings.class)
@RooWebJson(jsonObject = UserRatings.class)
public class UserRatingsController {
}
