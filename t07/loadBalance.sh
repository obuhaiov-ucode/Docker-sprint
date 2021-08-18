touch haproxy.cfg
echo "global
    log 127.0.0.1 local0 notice
    maxconn 2000
    daemon

defaults
    log global
    mode http
    option httplog
    option dontlognull
    option httpchk
    option forwardfor
    option http-server-close
    stats enable
    stats auth admin:admin
    stats realm Haproxy\ Statistics
    stats uri /haproxy?stats
    retries 3
    timeout connect 5000
    timeout client 50000
    timeout server 50000

frontend http-in
    bind *:80
    default_backend webservers

backend webservers
    balance roundrobin
    server apache_1 ${APACHE_1_IP}:${APACHE_EXPOSED_PORT} check
    server apache_2 ${APACHE_2_IP}:${APACHE_EXPOSED_PORT} check
" > haproxy.cfg
docker-compose up