var clickCallback = func {
	if (__kbd.alt.getBoolValue()) {
		var clickPos = geo.click_position();
		var lon = clickPos.lon();
		var lat = clickPos.lat();
		var alt = clickPos.alt();
		append(fgGeodesy.points, clickPos);
		fgGeodesy.distance = fgGeodesy.updateDistance();
		gui.popupTip(sprintf("Added point at longitude: %.6f, latitude: %.6f, altitude: %.1f, distance is %.1f meters", lon, lat, alt, fgGeodesy.distance));
	}
}

var updateDistance = func {
	var pointCount = size(fgGeodesy.points);
	print(pointCount);
	if (pointCount <= 1) {
		return 0;
	}
	
	distance = 0;
	i = 1;
	while (i < pointCount) {
		distance = distance + fgGeodesy.points[i - 1].distance_to(fgGeodesy.points[i]);
		i += 1;
	}
	
	return distance;
}

var updateArea = func {
	
}

