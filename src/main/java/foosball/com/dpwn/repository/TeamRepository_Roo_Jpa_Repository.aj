// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.repository;

import foosball.com.dpwn.model.Team;
import foosball.com.dpwn.repository.TeamRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect TeamRepository_Roo_Jpa_Repository {
    
    declare parents: TeamRepository extends JpaRepository<Team, Long>;
    
    declare parents: TeamRepository extends JpaSpecificationExecutor<Team>;
    
    declare @type: TeamRepository: @Repository;
    
}