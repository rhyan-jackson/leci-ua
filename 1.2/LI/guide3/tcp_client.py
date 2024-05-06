import socket

server = ('localhost', 1234)

tcp_c = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
tcp_c.bind(('localhost', 0))

tcp_c.connect(server)

while True:
    data = input("<-: ").encode('utf-8')
    tcp_c.send(data)
    
    data = tcp_c.recv(4096)
    
    print(f"->: {data.decode('utf-8')}\n")

tcp_c.close()