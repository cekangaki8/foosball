// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.service;

import foosball.com.dpwn.model.Match;
import foosball.com.dpwn.service.MatchService;
import java.util.List;

privileged aspect MatchService_Roo_Service {
    
    public abstract long MatchService.countAllMatches();    
    public abstract void MatchService.deleteMatch(Match match);    
    public abstract Match MatchService.findMatch(Long id);    
    public abstract List<Match> MatchService.findAllMatches();    
    public abstract List<Match> MatchService.findMatchEntries(int firstResult, int maxResults);    
    public abstract void MatchService.saveMatch(Match match);    
    public abstract Match MatchService.updateMatch(Match match);    
}
