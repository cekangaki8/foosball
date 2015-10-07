// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.web;

import foosball.com.dpwn.model.UserTeam;
import foosball.com.dpwn.model.UserTeamPK;
import foosball.com.dpwn.service.FoosballuserService;
import foosball.com.dpwn.service.TeamService;
import foosball.com.dpwn.service.UserTeamService;
import foosball.com.dpwn.web.UserTeamController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect UserTeamController_Roo_Controller {
    
    private ConversionService UserTeamController.conversionService;
    
    @Autowired
    UserTeamService UserTeamController.userTeamService;
    
    @Autowired
    FoosballuserService UserTeamController.foosballuserService;
    
    @Autowired
    TeamService UserTeamController.teamService;
    
    @Autowired
    public UserTeamController.new(ConversionService conversionService) {
        super();
        this.conversionService = conversionService;
    }

    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String UserTeamController.create(@Valid UserTeam userTeam, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, userTeam);
            return "userteams/create";
        }
        uiModel.asMap().clear();
        userTeamService.saveUserTeam(userTeam);
        return "redirect:/userteams/" + encodeUrlPathSegment(conversionService.convert(userTeam.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String UserTeamController.createForm(Model uiModel) {
        populateEditForm(uiModel, new UserTeam());
        return "userteams/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String UserTeamController.show(@PathVariable("id") UserTeamPK id, Model uiModel) {
        uiModel.addAttribute("userteam", userTeamService.findUserTeam(id));
        uiModel.addAttribute("itemId", conversionService.convert(id, String.class));
        return "userteams/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String UserTeamController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("userteams", UserTeam.findUserTeamEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) userTeamService.countAllUserTeams() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("userteams", UserTeam.findAllUserTeams(sortFieldName, sortOrder));
        }
        return "userteams/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String UserTeamController.update(@Valid UserTeam userTeam, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, userTeam);
            return "userteams/update";
        }
        uiModel.asMap().clear();
        userTeamService.updateUserTeam(userTeam);
        return "redirect:/userteams/" + encodeUrlPathSegment(conversionService.convert(userTeam.getId(), String.class), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String UserTeamController.updateForm(@PathVariable("id") UserTeamPK id, Model uiModel) {
        populateEditForm(uiModel, userTeamService.findUserTeam(id));
        return "userteams/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String UserTeamController.delete(@PathVariable("id") UserTeamPK id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        UserTeam userTeam = userTeamService.findUserTeam(id);
        userTeamService.deleteUserTeam(userTeam);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/userteams";
    }
    
    void UserTeamController.populateEditForm(Model uiModel, UserTeam userTeam) {
        uiModel.addAttribute("userTeam", userTeam);
        uiModel.addAttribute("foosballusers", foosballuserService.findAllFoosballusers());
        uiModel.addAttribute("teams", teamService.findAllTeams());
    }
    
    String UserTeamController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}