psql -h 127.0.0.1 -U sub1psp -d psp -p 5432 -c "show pool_nodes;"
/usr/pgsql-11/bin/pgbench  --client=10 --jobs=10 --time=300 --progress=5 --username=postgres --host=127.0.0.1 --port=5432 --select-only --no-vacuum daf &
/usr/pgsql-11/bin/pgbench  --client=10 --jobs=10 --time=300 --progress=5 --username=postgres --host=127.0.0.1 --port=5432 --skip-some-updates --no-vacuum daf &
sleep 310
psql -h 127.0.0.1 -U sub1psp -d psp -p 5432 -c "show pool_nodes;"
