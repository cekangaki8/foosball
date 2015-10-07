package foosball.com.dpwn.repository;
import foosball.com.dpwn.model.Match;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Match.class)
public interface MatchRepository {
}
