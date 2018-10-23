kibana-install:
  pkg.installed:
    - pkgs:
      - java
    - unless: java -version
  file.managed:
    - name: /usr/local/src/kibana-4.3.1-linux-x64.tar.gz
    - source: salt://files/kibana-4.3.1-linux-x64.tar.gz
    - mode: 644
    - user: root
    - group: root
  cmd.run:
    - name: cd /usr/local/src && tar zxf kibana-4.3.1-linux-x64.tar.gz&& mv kibana-4.3.1-linux-x64 /usr/local/ && ln -s /usr/local/kibana-4.3.1-linux-x64/ /usr/local/kibana && cd /usr/local/kibana/config && mv kibana.yml kibana.yml.bak
    - unless: test -d /usr/local/kibana
