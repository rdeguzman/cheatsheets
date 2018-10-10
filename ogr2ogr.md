---
layout: default
---
OGR2OGR CheatSheet
---

### Output as CSV WKT
	ogr2ogr -f CSV output.csv test.shp -lco GEOMETRY=AS_WKT
