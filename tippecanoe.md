---
layout: default
---
Tippecanoe CheatSheet
---

### Tippecanoe

	tippecanoe -s "EPSG:4326" --progress-interval=10 --force --reorder --coalesce --drop-smallest-as-needed --minimum-zoom=13 --maximum-zoom=16 --gamma=2.5 --detect-shared-borders -o out.mbtiles in.geojson
