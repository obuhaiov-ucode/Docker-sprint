docker run -dit --name my_web_server -p 8000:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd:2.4