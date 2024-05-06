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

def decrypt(buffer: bytes, cipherObj: AES):
    PAD_CHAR = "["
    
    decrypted_text = cipherObj.decrypt(buffer).decode("utf-8")
    first_pad_pos = decrypted_text.find(PAD_CHAR)

    return decrypted_text[:first_pad_pos]


assert len(sys.argv) >= 2, f"Correct usage: python3 {sys.argv[0]} file_name key_file_name"
assert os.path.exists(sys.argv[1]), f"{sys.argv[1]} not exists or is not on this path."
assert os.path.exists(sys.argv[2]), f"{sys.argv[2]} not exists or is not on this path."

encrypted_file_name = sys.argv[1]
key_file_name = sys.argv[2]
decrypted_file_name = "decrypted-" + encrypted_file_name

# BEGIN: Treating the key requirements

with open(key_file_name, "rb") as key_file:
    key_text = key_file.read()
key = validateKey(key_text)
print(key)

# END: Treating the key requirements

cipher = AES.new(key, AES.MODE_ECB)
BLOCK_SIZE = cipher.block_size

with open(encrypted_file_name, "rb") as encrypted_file:
    decrypted_final = ""
    while True:
        buffer = encrypted_file.read(BLOCK_SIZE)
        if len(buffer) != BLOCK_SIZE:
            break
        decrypted_text = decrypt(buffer=buffer, cipherObj=cipher)
        decrypted_final += decrypted_text
        
with open(decrypted_file_name, "wb") as output_file:
    output_file.write(decrypted_final.encode("utf-8"))

print('\033[32mCryptogram generated successful.\033[m\n')
print(f'Input: {encrypted_file_name}\n'
      f'Key: {key_file_name}\n'
      f'Output: {decrypted_file_name}')