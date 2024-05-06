import socket

server = ("localhost", 1234)

udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
udp_s.bind(("localhost", 0))

while True:
    data = input('Insira o que enviar > ').encode("utf-8")
    udp_s.sendto(data, server)
    b_data, addr = udp_s.recvfrom(4096)
    print(b_data.decode("utf-8"), addr)
    