<?php sleep (2); ?>

<div style="width: 450px;">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>

<form action="./samples/submit.php" method="post" class="form">	
	
	<div class="field">
		<label for="fname">Name</label>
		<div class="fields">
			<input type="text" name="fname" value="" id="fname" size="10" tabindex="1" placeholder="First" />		
			<input type="text" name="mname" value="" id="mname" size="3" tabindex="1" placeholder="M." />		
			<input type="text" name="lname" value="" id="lname" size="15" tabindex="1" placeholder="Last" />		
		</div>
	</div>	
	
	<div class="field">
		<label for="email">Email Address</label>
		<div class="fields">
			<input type="text" name="email" value="" id="email" size="30" tabindex="1" placeholder="name@example.com" />		
		</div>
	</div>
	
	<div class="field">
		<label for="phone">Phone Number</label>
		<div class="fields">
			<span class="error"><span>Please enter a valid phone number</span></span>
			<input type="text" name="phone1" value="" id="phone1" size="3" tabindex="1" placeholder="702" />		
			<input type="text" name="phone2" value="" id="phone2" size="3" tabindex="1" placeholder="555" />		
			<input type="text" name="phone3" value="" id="phone3" size="5" tabindex="1" placeholder="2368" />		
		</div>
	</div>	
	
	
	
	<div class="field">
		<label for="tos">Terms of Use</label>
		<div class="fields">
			<input type="checkbox" name="terms" value="1" id="terms" tabindex="1" />		
			<label for="terms">I accept the terms of use</label>
		</div>
	</div>
	
	
	<div class="actions">
		
		<button type="submit" class="btn primary" tabindex="1">Submit</button>
		
	</div>
	
</form>
</div>