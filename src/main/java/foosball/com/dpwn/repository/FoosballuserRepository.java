package foosball.com.dpwn.repository;
import foosball.com.dpwn.model.Foosballuser;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Foosballuser.class)
public interface FoosballuserRepository {
}
