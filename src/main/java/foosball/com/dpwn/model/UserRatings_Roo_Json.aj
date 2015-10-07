// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package foosball.com.dpwn.model;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import foosball.com.dpwn.model.UserRatings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect UserRatings_Roo_Json {
    
    public String UserRatings.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String UserRatings.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static UserRatings UserRatings.fromJsonToUserRatings(String json) {
        return new JSONDeserializer<UserRatings>()
        .use(null, UserRatings.class).deserialize(json);
    }
    
    public static String UserRatings.toJsonArray(Collection<UserRatings> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String UserRatings.toJsonArray(Collection<UserRatings> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<UserRatings> UserRatings.fromJsonArrayToUserRatingses(String json) {
        return new JSONDeserializer<List<UserRatings>>()
        .use("values", UserRatings.class).deserialize(json);
    }
    
}