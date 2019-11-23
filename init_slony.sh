#!/bin/sh

. ./env.conf

slonik << _EOF_
cluster name=$CLUSTERNAME;
node 1 admin conninfo = 'dbname=$DB1 host=$HOST1 port=$PORT1 user=$USER1 password=$PASS1';
node 2 admin conninfo = 'dbname=$DB2 host=$HOST2 port=$PORT2 user=$USER2 password=$PASS2';

init cluster (id=1,comment='Master');

create set(id=1, origin=1, comment='All tables');
set add table (set id=1, origin=1, id=1, fully qualified name='public.$TBL1', comment='$TBL1');

store node (id=2, comment='Slave', event node=1);
store path (server=1, client=2, conninfo='dbname=$DB1 host=$HOST1 port=$PORT1 user=$USER1 password=$PASS1');
store path (server=2, client=1, conninfo='dbname=$DB2 host=$HOST2 port=$PORT2 user=$USER2 password=$PASS2');
_EOF_

