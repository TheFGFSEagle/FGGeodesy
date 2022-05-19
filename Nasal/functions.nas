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
		var last = fgGeodesy.points[i - 1];
		var cur = fgGeodesy.points[i];
		distance = distance + math.sqrt(math.pow(cur.x() - last.x(), 2) + math.pow(cur.y() - last.y(), 2) + math.pow(cur.z() - last.z(), 2));
		i += 1;
	}
	
	return distance;
}

var updateArea = func {
	
}

