. env.conf

psql -d $DB1 -U $USER1 <<EOF
create table $TBL1 (id serial primary key, comment text, ins_time timestamp default current_timestamp );
EOF

psql -d $DB2 -U $USER2 <<EOF
create table $TBL1 (id serial primary key, comment text, ins_time timestamp default current_timestamp );
EOF
