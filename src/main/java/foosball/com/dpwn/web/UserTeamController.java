package foosball.com.dpwn.web;
import foosball.com.dpwn.model.UserTeam;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/userteams")
@Controller
@RooWebScaffold(path = "userteams", formBackingObject = UserTeam.class)
@RooWebJson(jsonObject = UserTeam.class)
public class UserTeamController {
}
