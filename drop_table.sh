. env.conf

psql -d $DB1 -U $USER1 <<EOF
drop table $TBL1;
EOF

psql -d $DB2 -U $USER2 <<EOF
drop table $TBL1;
EOF
