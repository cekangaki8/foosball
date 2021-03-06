// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.model;

import foosball.com.dpwn.model.Foosballuser;
import foosball.com.dpwn.model.Team;
import foosball.com.dpwn.model.UserTeam;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect UserTeam_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "USER_ID", referencedColumnName = "ID", insertable = false, updatable = false)
    private Foosballuser UserTeam.userId;
    
    @ManyToOne
    @JoinColumn(name = "TEAM_ID", referencedColumnName = "ID", insertable = false, updatable = false)
    private Team UserTeam.teamId;
    
    public Foosballuser UserTeam.getUserId() {
        return userId;
    }
    
    public void UserTeam.setUserId(Foosballuser userId) {
        this.userId = userId;
    }
    
    public Team UserTeam.getTeamId() {
        return teamId;
    }
    
    public void UserTeam.setTeamId(Team teamId) {
        this.teamId = teamId;
    }
    
}
