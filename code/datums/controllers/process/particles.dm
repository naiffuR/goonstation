datum/controller/process/particles
	var/datum/particleMaster/master

	setup()
		name = "Particles"
		schedule_interval = 10

		// putting this in a var so main loop varedit can get into the particleMaster
		master = particleMaster

	doWork()
		// TODO roll the "loop" code from particleMaster back into this system
		master.Tick()

	// regular timing doesn't really apply since particles abuse the shit out of spawn and sleep
	tickDetail()
		boutput(usr, "<b>Particles:</b>types: [master.particleTypes.len], systems: [master.particleSystems.len]<br>")

