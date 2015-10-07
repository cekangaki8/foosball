// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.service;

import foosball.com.dpwn.model.UserTeam;
import foosball.com.dpwn.model.UserTeamPK;
import foosball.com.dpwn.repository.UserTeamRepository;
import foosball.com.dpwn.service.UserTeamServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UserTeamServiceImpl_Roo_Service {
    
    declare @type: UserTeamServiceImpl: @Service;
    
    declare @type: UserTeamServiceImpl: @Transactional;
    
    @Autowired
    UserTeamRepository UserTeamServiceImpl.userTeamRepository;
    
    public long UserTeamServiceImpl.countAllUserTeams() {
        return userTeamRepository.count();
    }
    
    public void UserTeamServiceImpl.deleteUserTeam(UserTeam userTeam) {
        userTeamRepository.delete(userTeam);
    }
    
    public UserTeam UserTeamServiceImpl.findUserTeam(UserTeamPK id) {
        return userTeamRepository.findOne(id);
    }
    
    public List<UserTeam> UserTeamServiceImpl.findAllUserTeams() {
        return userTeamRepository.findAll();
    }
    
    public List<UserTeam> UserTeamServiceImpl.findUserTeamEntries(int firstResult, int maxResults) {
        return userTeamRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void UserTeamServiceImpl.saveUserTeam(UserTeam userTeam) {
        userTeamRepository.save(userTeam);
    }
    
    public UserTeam UserTeamServiceImpl.updateUserTeam(UserTeam userTeam) {
        return userTeamRepository.save(userTeam);
    }
    
}
