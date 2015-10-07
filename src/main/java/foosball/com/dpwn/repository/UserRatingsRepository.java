package foosball.com.dpwn.repository;
import foosball.com.dpwn.model.UserRatings;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = UserRatings.class)
public interface UserRatingsRepository {
}
