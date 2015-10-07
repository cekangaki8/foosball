package foosball.com.dpwn.repository;
import foosball.com.dpwn.model.Team;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Team.class)
public interface TeamRepository {
}
