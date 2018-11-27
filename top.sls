base:
  "*":
    - system-init
    - java-install
    - elasticsearch
    - httpd
    - logstash
  "12-elk-slave":
    - kibana
    - kibana-init
    - logstash-apachelog
  "13-elk-slave":
    - redis
    - logstash_redis_es
  "14-elk-master":
    - logstash-apachelog 
    
