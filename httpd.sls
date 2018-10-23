http-install:
  pkg.installed:
    - pkgs:
      - httpd
    - unless: test -d /etc/httpd
http-init:
  service.running:
    - name: httpd
    - enable: True
