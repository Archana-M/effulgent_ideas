http://codepen.io/WillemCrnlssn/pen/JgFGs

http://codepen.io/loktar00/pen/uEJKl

STARS: http://codepen.io/mtedwards/pen/neiId

# new form with materialize
<div class="row">
    <form action="/users" method="post" class="col s12">
    <input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">

      <div class="row">
        <div class="input-field col s6">
          <input type="text" id="name" name="user[name]" class="validate">
          <label for="name">Name</label>
        </div>
       </div>

       <div class="row">
        <div class="input-field col s6">
          <input id="alias" type="text" id="alias" name="user[alias]" class="validate">
          <label for="alias">Alias</label>
        </div>
      </div>
      
      <div class="row">
        <div class="input-field col s12">
          <input type="password" id="password" name="user[password]" class="validate">
          <label for="password">Password</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <input type="password" id="confirm_password" name="user[password_confirmation]" class="validate">
          <label for="password">Password</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
         <input type="email" id="email" name="user[email]" class="validate">
          <label for="email">Email</label>
        </div>
      </div>


		<input type = "submit" id="submit" value= "Register">

		 <% if flash[:regerrors] %>
		<% flash[:regerrors].each do |error| %>
		<%= error %>
		<% end %>
		<% end %>

    </form>
  </div>
  # end of new materialize form


  #old form
<form action="/users" method="post">
	<input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
		<p>
			<label for="name">Name:</label>
			<input type="text" id="name" name="user[name]">
		</p>


		<p>
			<label for="alias">Alias:</label>
			<input type="text" id="alias" name="user[alias]">
		</p>

		<p>
			<label for="email">Email:</label>
			<input type="email" id="email" name="user[email]">
		</p>

		<p>
			<label for="password">Password:</label>
			<input type="password" id="password" name="user[password]">
		</p>

		<p>
			<label for="confirm_password">Password Confirmation:</label>
			<input type="password" id="confirm_password" name="user[password_confirmation]">
		</p>


		<input type = "submit" id="submit" value= "Register"><br>

		<% if flash[:regerrors] %>
		<% flash[:regerrors].each do |error| %>
		<%= error %><br>
		<% end %>
		<% end %>

</form>

  # end of old form


  # ideas new form 
  	<div class="row">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s6">
          <i class="material-icons prefix">mode_edit
          <textarea id="icon_prefix2" class="materialize-textarea"></textarea>
          <label for="icon_prefix2">First Name</label>
        </div>
      </div>
    </form>
  </div>
        


  # end of ideas form

  # ideas old form
  	<form action="/ideas" method="post">

	<input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
	<input type = 'hidden' name ='user_id' value = "<%= @user.id %>">
		<p>
			<label for="New idea">New idea</label>
			<input type="text" id="New idea" name="content">
		</p>

		<input type = "submit" id="submit" value= "Idea!">
</form>


  # ideas old form end


  # old log out code
# <form action='/sessions' method='post'>
		
# 	  <input type='hidden' name='authenticity_token' value='<%= form_authenticity_token %>'>

# 	   <input type='hidden' name='_method' value='delete'>

# 	  <input type="submit" value ="Log Out">
# </form> 


  # end of log out code


  <div class="row">
      <div class="col s12 m5">
        <div class="card-panel teal">
          <span class="white-text">I am a very simple card. I am good at containing small bits of information.
          I am convenient because I require little markup to use effectively. I am similar to what is called a panel in other frameworks.
          </span>
        </div>
      </div>
    </div>