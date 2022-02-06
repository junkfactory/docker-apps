# Running ProxySQL on Docker with MySQL Replication
Run proxysql integrating with mysql replication

```
docker run -d \
--name proxysql2 \
--publish 6033:6033 \
--publish 6032:6032 \
--publish 6080:6080 \
--restart=unless-stopped \
-v $(pwd)/proxysql.cnf:/etc/proxysql.cnf \
severalnines/proxysql:2.0
```