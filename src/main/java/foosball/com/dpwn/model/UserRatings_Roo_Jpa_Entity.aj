// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.model;

import foosball.com.dpwn.model.UserRatings;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect UserRatings_Roo_Jpa_Entity {
    
    declare @type: UserRatings: @Entity;
    
    declare @type: UserRatings: @Table(schema = "FOOSBALL", name = "USER_RATINGS");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USER_ID")
    private Long UserRatings.userId;
    
    public Long UserRatings.getUserId() {
        return this.userId;
    }
    
    public void UserRatings.setUserId(Long id) {
        this.userId = id;
    }
    
}
