package foosball.com.dpwn.web;
import foosball.com.dpwn.model.Match;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/matches")
@Controller
@RooWebScaffold(path = "matches", formBackingObject = Match.class)
@RooWebJson(jsonObject = Match.class)
public class MatchController {
}
