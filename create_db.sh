. env.conf

psql <<EOF
create database $DB1 owner $USER1;
create database $DB2 owner $USER2;
EOF

