/usr/local/kibana/config/kibana.yml:
    file.managed:
        - source: salt://files/kibana.yml
        - mode: 644
        - user: root
        - group: root
/etc/profile:
    file.append:
        - text:
          - export "PATH=/usr/local/kibana/bin/:$PATH"
