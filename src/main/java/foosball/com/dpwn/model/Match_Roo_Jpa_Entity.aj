// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.model;

import foosball.com.dpwn.model.Match;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Match_Roo_Jpa_Entity {
    
    declare @type: Match: @Entity;
    
    declare @type: Match: @Table(schema = "FOOSBALL", name = "MATCH");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Long Match.id;
    
    public Long Match.getId() {
        return this.id;
    }
    
    public void Match.setId(Long id) {
        this.id = id;
    }
    
}
