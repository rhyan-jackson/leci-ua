import socket

udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
udp_s.bind(("localhost", 1234))

while True:
    b_data, addr = udp_s.recvfrom(4096)
    received_message = b_data.decode("utf-8")
    print(f"{received_message} | received from {addr}.")
    send_message = f"{received_message} é gay.".encode("utf-8")
    udp_s.sendto(send_message, addr)
    