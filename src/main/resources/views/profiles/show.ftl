<#-- @ftlvariable name="" type="com.innoq.helloworld.views.ProfileView" -->
<#include "../layouts/header.html">

<h1>Public Profile from ${profile.firstName?html}</h1>

<div id="col-one">

  <div class="profile-image">
    <img src="/assets/images/photos/speaker/${profile.photoFileName?html}" alt="${profile.lastName?html}" />
  </div>
  <!-- /profile-image -->

  <div class="profile-actions">

  </div>
  <!-- /profile-actions -->

  <h2>User's profile updates (${profile.statuses?size})</h2>

  <div class="profile-stream">
	
    <#list profile.statuses as status>

	<div class="profile-stream-item">
	  <span class="profile-stream-item-date">${status.createdAt?html}</span>
	  ${status.message?html}
	</div>
	
	</#list>

  </div>
  <!-- /profile-stream -->

</div>
<!-- /col-one -->

<div id="col-two">
  <div class="profile-center">

    <h3><!--<%= @profile.full_name %>--></h3>
    <p><!--<%= @profile.profession %>--> at <strong><!--<%= @profile.company %>--></strong></p>

    <div class="profile-center-company">
      <!--<%= render :partial => 'address',
        :collection => [@profile.business_address] %>-->

    </div>

    <h4>About Me</h4>
    <p><!--<%= @profile.about %>--></p>
    
  </div>

  <!--
  <a href="#" title="" class="button-blue">Send Message</a>
  -->
  
</div>
<!-- /col-two -->

<div id="col-three">
  <h2>User's contacts (<!--<%= @profile.contacts.relation_accepted.count || 0 %>-->)</h2>

  <div class="contact-list-small">
    <!--<%= render :partial => 'contact', :collection => @profile.contacts.relation_accepted %>-->
  </div>
  <!-- /contact-list-small -->
</div>
<!-- /col-three -->

<div class="clear"><!-- clear --></div>






<!-- FOOTER -->
<#include "../layouts/footer.html">
