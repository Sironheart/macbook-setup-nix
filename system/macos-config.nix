{ pkgs, ...}: {
	documentation.enable = false;
	documentation.man.enable = false;
	security.pam.enableSudoTouchIdAuth = true;

	environment.shells = [ pkgs.fish ];

	time.timeZone = "Europe/Berlin";
	system.defaults.finder.ShowPathbar = true;
	system.defaults.Softwareupdate.AutomaticallyInstallMacOSUpdates = true;

	system.defaults.NSGlobalDomain = {
		"com.apple.swipescrolldirection" = false;
		"AppleShowAllFiles" = true;
		"AppleShowAllExtensions" = true;
	};
}
