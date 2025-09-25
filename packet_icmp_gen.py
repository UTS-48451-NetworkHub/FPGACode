#!/usr/bin/env python3
import struct
import zlib

# ----------------------------
# Helper functions
# ----------------------------
def mac_str_to_bytes(mac):
    return bytes(int(x, 16) for x in mac.split(':'))

def ip_str_to_bytes(ip):
    return bytes(int(x) for x in ip.split('.'))

def checksum(data):
    """Compute Internet checksum (IP, ICMP)"""
    if len(data) % 2 == 1:
        data += b'\x00'
    s = sum(struct.unpack("!%dH" % (len(data)//2), data))
    while s > 0xffff:
        s = (s >> 16) + (s & 0xffff)
    return (~s) & 0xffff

# ----------------------------
# Packet parameters
# ----------------------------
dst_mac = 'BE:EF:DE:AD:11:11'
src_mac = 'DE:AD:BE:EF:00:00'
src_ip  = '192.168.1.44'
dst_ip  = '192.168.1.2'

icmp_payload = b'Hello (From FPGA)!!!\x00\xFE'  # 18 bytes payload

# ----------------------------
# Ethernet header
# ----------------------------
eth_type = 0x0800
eth_hdr = mac_str_to_bytes(dst_mac) + mac_str_to_bytes(src_mac) + struct.pack('!H', eth_type)

# ----------------------------
# ICMP header
# ----------------------------
icmp_type = 8
icmp_code = 0
icmp_id   = 0x1234
icmp_seq  = 1
icmp_hdr = struct.pack('!BBHHH', icmp_type, icmp_code, 0, icmp_id, icmp_seq)
icmp_cksum = checksum(icmp_hdr + icmp_payload)
icmp_hdr = struct.pack('!BBHHH', icmp_type, icmp_code, icmp_cksum, icmp_id, icmp_seq)

# ----------------------------
# IP header
# ----------------------------
version_ihl = (4 << 4) | 5
tos         = 0
total_len   = 20 + len(icmp_hdr) + len(icmp_payload)
ident       = 0x0001
flags_frag  = 0
ttl         = 64
protocol    = 1
ip_hdr = struct.pack('!BBHHHBBH4s4s',
                     version_ihl,
                     tos,
                     total_len,
                     ident,
                     flags_frag,
                     ttl,
                     protocol,
                     0,  # checksum placeholder
                     ip_str_to_bytes(src_ip),
                     ip_str_to_bytes(dst_ip))
ip_cksum = checksum(ip_hdr)
ip_hdr = struct.pack('!BBHHHBBH4s4s',
                     version_ihl,
                     tos,
                     total_len,
                     ident,
                     flags_frag,
                     ttl,
                     protocol,
                     ip_cksum,
                     ip_str_to_bytes(src_ip),
                     ip_str_to_bytes(dst_ip))

# ----------------------------
# Full frame without CRC
# ----------------------------
frame = eth_hdr + ip_hdr + icmp_hdr + icmp_payload

# Ethernet minimum frame length is 64 bytes (including CRC), so pad if needed
if len(frame) < 60:
    frame += b'\x00' * (60 - len(frame))

# ----------------------------
# Compute CRC32 (Ethernet uses bit-reversed CRC, little-endian)
# ----------------------------
# Ethernet CRC32 uses the standard IEEE polynomial, but the bits are reflected.
# Python zlib.crc32 produces big-endian value, need to reverse bytes for VHDL
def ethernet_crc32(data):
    """Calculate proper Ethernet CRC32 with bit reflection"""
    crc = 0xFFFFFFFF
    for byte in data:
        crc ^= byte
        for _ in range(8):
            if crc & 1:
                crc = (crc >> 1) ^ 0xEDB88320  # Bit-reversed polynomial
            else:
                crc >>= 1
    return (~crc) & 0xFFFFFFFF

# Replace your CRC calculation with:
for i, b in enumerate(frame):
    print(f"Byte {i}: x\"{b:02X}")
crc = ethernet_crc32(frame)
crc_bytes = struct.pack('<I', crc)
# Append CRC to frame
frame += crc_bytes

# ----------------------------
# Prepend length field (2 bytes)
# ----------------------------
frame_len = len(frame) + 8
print(f"Frame has length: {frame_len}")
frame_rom_bytes = struct.pack('!H', frame_len) + frame

# ----------------------------
# Generate VHDL ROM
# ----------------------------
frame_bytes = len(frame_rom_bytes)
vhdl_lines = [f"  constant frame_bytes : natural := {frame_bytes};"]
vhdl_lines.append(f"  type rom_t is array (0 to frame_bytes - 1) of std_logic_vector(7 downto 0);")
vhdl_lines.append("  constant frame_rom : rom_t := (")
for i, b in enumerate(frame_rom_bytes):
    comma = ',' if i < frame_bytes - 1 else ''
    vhdl_lines.append(f"    x\"{b:02X}\"{comma}")

vhdl_lines.append("  );")

print("\n".join(vhdl_lines))
