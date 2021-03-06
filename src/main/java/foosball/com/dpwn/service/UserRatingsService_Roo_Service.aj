// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.service;

import foosball.com.dpwn.model.UserRatings;
import foosball.com.dpwn.service.UserRatingsService;
import java.util.List;

privileged aspect UserRatingsService_Roo_Service {
    
    public abstract long UserRatingsService.countAllUserRatingses();    
    public abstract void UserRatingsService.deleteUserRatings(UserRatings userRatings);    
    public abstract UserRatings UserRatingsService.findUserRatings(Long id);    
    public abstract List<UserRatings> UserRatingsService.findAllUserRatingses();    
    public abstract List<UserRatings> UserRatingsService.findUserRatingsEntries(int firstResult, int maxResults);    
    public abstract void UserRatingsService.saveUserRatings(UserRatings userRatings);    
    public abstract UserRatings UserRatingsService.updateUserRatings(UserRatings userRatings);    
}
