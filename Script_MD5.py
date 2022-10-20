import hashlib
pEnc =[]
for psw in passwords:
    enc = hashlib.md5((psw).encode()).hexdigest()
    pEnc.append(enc)