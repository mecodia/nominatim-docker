THREADS=4

curl http://download.geofabrik.de/europe/germany-latest.osm.pbf > /data/germany-latest.osm.pbf
useradd -m -p password1234 nominatim && \
chown -R nominatim:nominatim ./src && \
sudo -u nominatim ./src/build/utils/setup.php --osm-file /data/germany-latest.osm.pbf --all --threads $THREADS && \
sudo -u nominatim ./src/build/utils/check_import_finished.php
