<?php  /* Template name: Home */  ?>
<style>
	body {
		margin: 0;
	}
	.home-full-screen-image {
		text-align: center;
		background: #fbde45;
		height: 100vh;
		overflow: hidden;
		float: left;
		width: 100%;
	}
	.home-full-screen-image img { 
		max-width: 100%;
    	height: auto;
	}
</style>


<div class="home-full-screen-image">
	<?php the_post_thumbnail(); ?>
</div>