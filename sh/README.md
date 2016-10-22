## RUNNING INIT BHIMA 

Before running the init-bhima.sh script you must be sure bhima mysql user has necessary privilege on the bhima_production data base. 

You can run as root in mysql : 

```
GRANT ALL PRIVILEGES ON bhima_production.* TO 'bhima'@'%' IDENTIFIED BY 'thePasswordForUser';
```