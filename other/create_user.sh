. env.conf

psql <<EOF
create role "$USER1" with login inherit password '$PASS1';
create role "$USER2" with login inherit password '$PASS2';
EOF

