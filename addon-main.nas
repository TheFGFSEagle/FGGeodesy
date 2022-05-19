var namespace = "fgGeodesy";

var main = func(addon) {
	logprint(LOG_INFO, "FGGeodesy addon initialized from ", addon.basePath);
	
	globals[namespace] = {
		points: [],
		distance: 0,
	};
	
	io.load_nasal(addon.basePath ~ "/Nasal/functions.nas", namespace);
	
	fgGeodesy.clickListener = setlistener("/sim/signals/click", fgGeodesy.clickCallback, 0, 1);
}

var unload = func(addon) {
	logprint(LOG_DEBUG, "Unloading target-dropping addon");
	
	removelistener(fgGeodesy.clickListener);
	
	delete(globals, namespace);
}

