// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.service;

import foosball.com.dpwn.model.UserTeam;
import foosball.com.dpwn.model.UserTeamPK;
import foosball.com.dpwn.service.UserTeamService;
import java.util.List;

privileged aspect UserTeamService_Roo_Service {
    
    public abstract long UserTeamService.countAllUserTeams();    
    public abstract void UserTeamService.deleteUserTeam(UserTeam userTeam);    
    public abstract UserTeam UserTeamService.findUserTeam(UserTeamPK id);    
    public abstract List<UserTeam> UserTeamService.findAllUserTeams();    
    public abstract List<UserTeam> UserTeamService.findUserTeamEntries(int firstResult, int maxResults);    
    public abstract void UserTeamService.saveUserTeam(UserTeam userTeam);    
    public abstract UserTeam UserTeamService.updateUserTeam(UserTeam userTeam);    
}
