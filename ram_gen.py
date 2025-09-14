# Define memory size
mem_size = 2048  # Adjust as needed

# Initialize memory with zeros
mem = [0x00]*mem_size

# Preamble (7 bytes of 0x55) + SFD (1 byte of 0xD5)
preamble_sfd = [0x55]*7 + [0xD5]

# Load preamble + SFD at start of memory
for i, b in enumerate(preamble_sfd):
    mem[i + 2] = b

# Write Intel HEX file
with open("ram_preamble.hex", "w") as f:
    address = 0
    for byte in mem:
        # Intel HEX record format: :llaaaatt[dd...]cc
        ll = 1  # one byte per record
        aaaa = address
        tt = 0x00  # data record
        dd = byte
        # Compute checksum: two's complement of sum(ll + addr bytes + type + data)
        cksum = (ll + ((aaaa >> 8) & 0xFF) + (aaaa & 0xFF) + tt + dd) & 0xFF
        cksum = (-cksum) & 0xFF
        f.write(f":{ll:02X}{aaaa:04X}{tt:02X}{dd:02X}{cksum:02X}\n")
        address += 1
    # End-of-file record
    f.write(":00000001FF\n")

print(f"Generated ram_preamble.hex with {mem_size} bytes (preamble + SFD at start).")
