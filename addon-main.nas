var main = func(addon) {
	logprint(LOG_INFO, "FGGeodesy addon initialized from ", addon.basePath);
	
	setlistener("/sim/signals/click", func {
		if (__kbd.alt.getBoolValue()) {
			var click_pos = geo.click_position();
			var pos_lat = click_pos.lat();
			var pos_lon = click_pos.lon();
			var click_alt = geo.elevation(click_pos.lat(), click_pos.lon());
			print(pos_lat, " ", pos_lon, " ", click_alt);
		}
	}, 0, 1);
}

var unload = func(addon) {
	logprint(LOG_DEBUG, "Unloading target-dropping addon");
	
	delete(globals, "FGGeodesy");
}
