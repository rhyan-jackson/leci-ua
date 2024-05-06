import os
from Crypto.Cipher import ARC4
from Crypto.Hash import SHA256
import sys

key_text = sys.argv[2]
key = key_text.encode("utf-8")

if len(key_text) < 5:
    key_hash = SHA256.new()
    key_hash.update(key)
    key = key_hash.digest()

if len(key_text) > 256:
    key_text = key_text[:256]
    key = key_text.encode("utf-8")

# print(f"Key: {key}")


if len(sys.argv) < 2:
    print(f'Correct usage: python3 {sys.argv[0]} filename chave')
    sys.exit(1)

filename = sys.argv[1]
cipher = ARC4.new(key)

with open(filename, 'rb') as file:
    plaintext = file.read()

# print(f'The plain text(utf-8): \n{plaintext.decode("utf-8")}\n')
# print(f'The plain text: \n{plaintext}\n')

cryptogram = cipher.encrypt(plaintext)
# print('The cryptogram text:')
os.write(1, cryptogram)
# print()

# decipher = ARC4.new(key)
# decrypted = decipher.decrypt(cryptogram)

# print('The decrypted text:')
# print(decrypted.decode('utf-8'))