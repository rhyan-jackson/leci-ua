import socket
import sys
import select

server_addr = ("localhost", 1234)

udp_c = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
udp_c.bind(("localhost", 0))

print(udp_c.getsockname())

udp_c.sendto(b'', server_addr)

while True:
    rsocks = select.select([udp_c, sys.stdin], [], [])[0]
    
    for sock in rsocks:
        if sock == udp_c:
            b_data, addr = udp_c.recvfrom(4096)
            sys.stdout.write("%s\n" % b_data.decode("utf-8"))
        elif sock == sys.stdin:
            str_data = sys.stdin.readline()
            udp_c.sendto(str_data.encode("utf-8"), server_addr)