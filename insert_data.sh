. ./env.conf

while true;
do
	mdhms=`date +%m%d%H%M%S`
	sec=`date +%s`
	nsec=`date +%N`
	d=$nsec;

echo "insert into $TBL1 values( $d, 'nano sec data');"

psql -d masterdb <<EOF
insert into $TBL1 values( $d, 'nano sec data');
EOF

	sleep 1;
done
