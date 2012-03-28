<#-- @ftlvariable name="" type="com.innoq.helloworld.views.ProfileView" -->
<html>
    <body>
        <!-- calls getProfile().getFirstName() and sanitizes it -->
        <h1>Hello, ${profile.firstName?html}!</h1>
    </body>
</html>