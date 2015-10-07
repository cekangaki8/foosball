// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.model;

import foosball.com.dpwn.model.Team;
import foosball.com.dpwn.model.UserTeam;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Team_Roo_DbManaged {
    
    @OneToMany(mappedBy = "teamId")
    private Set<UserTeam> Team.userTeams;
    
    @Column(name = "TEAMNAME", length = 50)
    @NotNull
    private String Team.teamname;
    
    @Column(name = "NUMBEROFGAMES")
    private Integer Team.numberofgames;
    
    @Column(name = "CUMULATIVEPOINT")
    private Integer Team.cumulativepoint;
    
    @Column(name = "RANK")
    private Integer Team.rank;
    
    public Set<UserTeam> Team.getUserTeams() {
        return userTeams;
    }
    
    public void Team.setUserTeams(Set<UserTeam> userTeams) {
        this.userTeams = userTeams;
    }
    
    public String Team.getTeamname() {
        return teamname;
    }
    
    public void Team.setTeamname(String teamname) {
        this.teamname = teamname;
    }
    
    public Integer Team.getNumberofgames() {
        return numberofgames;
    }
    
    public void Team.setNumberofgames(Integer numberofgames) {
        this.numberofgames = numberofgames;
    }
    
    public Integer Team.getCumulativepoint() {
        return cumulativepoint;
    }
    
    public void Team.setCumulativepoint(Integer cumulativepoint) {
        this.cumulativepoint = cumulativepoint;
    }
    
    public Integer Team.getRank() {
        return rank;
    }
    
    public void Team.setRank(Integer rank) {
        this.rank = rank;
    }
    
}