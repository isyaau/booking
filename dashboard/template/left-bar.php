<aside id="sidebar-left" class="sidebar-left">
				
	<div class="sidebar-header">
		<div class="sidebar-title">
			Navigation
		</div>
		<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
			<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
		</div>
	</div>

	<div class="nano">
		<div class="nano-content">
			<nav id="menu" class="nav-main" role="navigation">
				<ul class="nav nav-main">
					<li class="nav-active">
						<a href="index.php">
							<i class="fa fa-home" aria-hidden="true"></i>
							<span>Dashboard</span>
						</a>
					</li>
					<?php if((isset($_SESSION['isLoggedIn']) && $_SESSION['role'] == 1)){ ?>
						<li class="nav">
						<a href="table-list.php">
							<i class="fa fa-table" aria-hidden="true"></i>
							<span>Meja</span>
						</a>
					</li>
					<li class="nav">
						<a href="menu-list.php">
						<i class="fa fa-book" aria-hidden="true"></i>
							<span>Menu</span>
						</a>
					<li class="nav">
						<a href="booking-list.php">
							<i class="fa fa-folder" aria-hidden="true"></i>
							<span>Reservasi</span>
						</a>
					
					<?php } ?>
					
					
				</ul>
			</nav>

			<hr class="separator" />
		</div>

	</div>

</aside>