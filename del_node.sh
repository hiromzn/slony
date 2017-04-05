#!/bin/sh

. ./env.conf

slonik << _EOF_
cluster name=$CLUSTERNAME;
node 1 admin conninfo = 'dbname=$DB1 host=$HOST1 port=$PORT1 user=$USER1 password=$PASS1';
node 2 admin conninfo = 'dbname=$DB2 host=$HOST2 port=$PORT2 user=$USER2 password=$PASS2';
uninstall node (id=1);
_EOF_

slonik << _EOF_
cluster name=$CLUSTERNAME;
node 1 admin conninfo = 'dbname=$DB1 host=$HOST1 port=$PORT1 user=$USER1 password=$PASS1';
node 2 admin conninfo = 'dbname=$DB2 host=$HOST2 port=$PORT2 user=$USER2 password=$PASS2';
uninstall node (id=2);
_EOF_
