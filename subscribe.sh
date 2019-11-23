#!/bin/sh

. ./env.conf

slonik << _EOF_
cluster name=$CLUSTERNAME;
node 1 admin conninfo = 'dbname=$DB1 host=$HOST1 port=$PORT1 user=$USER1 password=$PASS1';
node 2 admin conninfo = 'dbname=$DB2 host=$HOST2 port=$PORT2 user=$USER2 password=$PASS2';

subscribe set ( id = 1, provider = 1, receiver = 2, forward = no);
_EOF_
