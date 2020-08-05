# pricex-infra

To run queries on presto:

./presto --server presto-coordinator:8080 --catalog hive --schema default

To load data into hive tables:

1) Loginto hive container.
2) Run "hive"
3) Run the following queries:
     create table test(id integer, name string);
     insert into test (1, test);
     
