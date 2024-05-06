import socket

udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
udp_s.bind(("localhost", 1234))

addr_list = []

while True:
    b_data, addr = udp_s.recvfrom(4096)
    print(f"Received {b_data.decode('utf-8')} from {addr}.")
    
    if addr not in addr_list:
        addr_list.append(addr)
    
    for send_addr in addr_list:
        if send_addr != addr:
            if b_data == b'':
                send_msg_b = f"{addr[1]} joined the chat.".encode('utf-8')
            else:
                send_msg_b = f"Sent by port {addr[1]}: {b_data.decode('utf-8')}".encode('utf-8')
            udp_s.sendto(send_msg_b, send_addr)
