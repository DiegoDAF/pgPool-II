sudo rm -f "/tmp/.s.PGSQL.9898"
sudo rm -f "/tmp/.s.PGSQL.9999"
sudo rm -f /var/run/pgpool/pgpool.pid
sudo rm -f /var/log/pgpool/pgpool.debug.log
sudo rm -f /tmp/pgpool_status
#sudo pgpool --config-file=/etc/pgpool-II-11/pgpool.daf.conf --dont-detach --debug
sudo pgpool --config-file=/etc/pgpool-II-11/pgpool.daf.conf  2>&1 >/var/log/pgpool/pgpool.debug.log &
#tail -f /var/log/pgpool/pgpool.debug.log

