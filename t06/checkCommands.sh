docker-compose up
curl -Is 127.0.0.1:8080 | head -n 1
telnet localhost 8080
cat < /dev/null > /dev/tcp/localhost/8080; echo $?
nmap -p 8080 localhost

if wget -q --spider localhost:8080; then
    echo "Online"
fi

if nc -zw1 localhost 8080; then
  echo "Online"
fi