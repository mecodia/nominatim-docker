OSMFILE=$1
THREADS=$2

useradd -m -p password1234 nominatim && \
chown -R nominatim:nominatim ./src && \
sudo -u nominatim ./src/build/utils/setup.php --osm-file $OSMFILE --all --threads $THREADS && \
sudo -u nominatim ./src/build/utils/check_import_finished.php
