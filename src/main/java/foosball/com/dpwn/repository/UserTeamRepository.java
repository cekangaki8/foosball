package foosball.com.dpwn.repository;
import foosball.com.dpwn.model.UserTeam;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = UserTeam.class)
public interface UserTeamRepository {
}
