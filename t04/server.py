import http.server
import socketserver

with socketserver.TCPServer(('localhost', 8000),
                            http.server.SimpleHTTPRequestHandler) as httpd:
    httpd.serve_forever()
