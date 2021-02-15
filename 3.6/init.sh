THREADS=4

curl http://download.geofabrik.de/europe/dach-latest.osm.pbf > /data/dach-latest.osm.pbf
useradd -m -p nominatim nominatim && \
chown -R nominatim:nominatim ./src && \
sudo -u nominatim ./src/build/utils/setup.php --osm-file /data/dach-latest.osm.pbf --all --threads $THREADS && \
sudo -u nominatim ./src/build/utils/check_import_finished.php
