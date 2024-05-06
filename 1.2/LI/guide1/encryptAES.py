import sys
import os
from Crypto.Cipher import AES
from Crypto.Hash import SHA256


def validateKey(key_text: str) -> bytes:
    if len(key_text) < 16:
        hash = SHA256.new()
        hash.update(key_text.encode("utf-8"))
        return hash.hexdigest()[:16].encode("utf-8")
    return key_text[0:16]


def encrypt(buffer: bytes, cipherObj: AES):
    incomplete_buffer = False
    PAD_CHAR = b"["
    BLOCK_SIZE = cipherObj.block_size

    block_text = buffer + (BLOCK_SIZE - len(buffer)) * PAD_CHAR
    ciphered_text = cipherObj.encrypt(block_text)

    if len(buffer) < BLOCK_SIZE:
        incomplete_buffer = True

    return ciphered_text, incomplete_buffer


assert len(sys.argv) >= 2, f"Correct usage: python3 {sys.argv[0]} file_name key_file_name"
assert os.path.exists(sys.argv[1]), f"{sys.argv[1]} not exists or is not on this path."
assert os.path.exists(sys.argv[2]), f"{sys.argv[2]} not exists or is not on this path."

input_file_name = sys.argv[1]
key_file_name = sys.argv[2]
output_file_name = "output-" + input_file_name

# BEGIN: Treating the key requirements

with open(key_file_name, "rb") as key_file:
    key_text = key_file.read()
key = validateKey(key_text)
print(key)

# END: Treating the key requirements

cipher = AES.new(key, AES.MODE_ECB)
BLOCK_SIZE = cipher.block_size

with open(input_file_name, "rb") as input_file:
    cryptogram = b""
    while True:
        buffer = input_file.read(BLOCK_SIZE)
        ciphered_text, last_buffer = encrypt(buffer=buffer, cipherObj=cipher)
        cryptogram += ciphered_text

        if last_buffer:
            break

with open(output_file_name, "wb") as output_file:
    output_file.write(cryptogram)

print('\033[32mCryptogram generated successful.\033[m\n')
print(f'Input: {input_file_name}\n'
      f'Key: {key_file_name}\n'
      f'Output: {output_file_name}')