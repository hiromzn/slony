. ./env.conf

echo "check : $DB2:$TBL1"
while true;
do

psql -d $DB2 <<EOF
select count(*) from $TBL1;
EOF

	sleep 1;
done
