package foosball.com.dpwn.model;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "", table = "MATCH", schema = "FOOSBALL")
@RooDbManaged(automaticallyDelete = true)
@RooJson(deepSerialize = true)
public class Match {
}
