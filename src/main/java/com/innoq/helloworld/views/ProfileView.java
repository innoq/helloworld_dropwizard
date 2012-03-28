package com.innoq.helloworld.views;

import com.innoq.helloworld.models.Profile;
import com.yammer.dropwizard.views.View;

public class ProfileView extends View {
    private final Profile profile;

    public ProfileView(Profile profile) {
        super("views/profiles/profile.ftl");
        this.profile = profile;
    }

    public ProfileView(Profile profile, String template) {
        super("views/profiles/" + template);
        this.profile = profile;
    }

    public Profile getProfile() {
        return profile;
    }
}
