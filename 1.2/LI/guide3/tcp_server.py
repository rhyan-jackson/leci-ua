import socket 

tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
tcp_s.bind(('localhost', 1111))
tcp_s.listen(1)

client_s, client_addr = tcp_s.accept()

while True:
    b_data = client_s.recv(4096)
    client_s.send(b_data.upper())