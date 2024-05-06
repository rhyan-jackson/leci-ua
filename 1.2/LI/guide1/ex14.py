import os
from Crypto.Cipher import ARC4


cipher = ARC4.new("chave".encode("utf-8"))
cryptogram = cipher.encrypt("Texto safado".encode("utf-8"))
os.write(1, cryptogram)
print(cryptogram)
# o 1 representa o descritor do stdout
print()
decipher = ARC4.new("chave".encode("utf-8"))
decrypted = decipher.decrypt(cryptogram)
print(decrypted.decode("utf-8"))