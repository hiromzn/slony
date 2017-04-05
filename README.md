# prepare:

```
$ vi env.conf
CLUSTERNAME=slony_test1
DB1=masterdb
DB2=slavedb
HOST1=localhost
HOST2=localhost
PORT1=5432
PORT2=5432
USER1=postgres
PASS1=password <<<< edit !
USER2=$USER1
PASS2=$PASS1

TBL1=mastertbl
/bin/bash: env.conf: コマンドが見つかりません
```

# initialize:

```
$ su - postgres
$ create_db.sh
$ create_table.sh

$ init_slony.sh
```

# start replication

```
teminal 1 : $ slon1.sh
teminal 2 : $ slon2.sh
teminal 3 : $ subscribe.sh
```

# insert data in master

```
$ su - postgres
$ ./insert_data.sh
insert into mastertbl values( 447699011, 'nano sec data');
INSERT 0 1
insert into mastertbl values( 541686976, 'nano sec data');
INSERT 0 1
.....
```

# check data in slave

```
$ su - postgres
$ ./check_data.sh
check : slavedb:mastertbl
 count 
-------
    50
(1 row)
.....
```

# stop:

stop slon2 for slave
stop slon1 for master

# clean:

```
stop slon2 for slave
stop slon1 for master

$ del_node.sh

$ drop_table.sh
$ drop_db.sh
```

