import socket
import select

tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
tcp_s.bind(('localhost', 1234))
tcp_s.listen(10)
connections = []

print("Chat server started.")

while True:
    read_sockets = select.select(connections, [], [])[0]
    
    for sock in read_sockets:
        if sock == tcp_s:
            client_s, addr = tcp_s.accept()
            connections.append(client_s)
            print("Client connected: %s" % str(addr))
        else:
            try:
                data = sock.recv(4096)
                if len(data) != 0:
                    print("From client: %s" % str(sock.getpeername()))
                    print("Got Data: " + data.decode("utf-8"))
                else:
                    print("Client disconnected: %s" % str(sock.getpeername()))
                    sock.close()
                    connections.remove(sock)
                    break
            
                message = "<From client: " + str(sock.getpeername()) + "> "
                message = message.encode("utf-8") + data.upper()
                
                for client in connections:
                        if client != tcp_s:
                            client.send(message)
            except: # Erro no socket do cliente
                print("Client socket error: %s" % str(addr))
                sock.close()
                connections.remove(sock) # retirar este socket da lista
                continue