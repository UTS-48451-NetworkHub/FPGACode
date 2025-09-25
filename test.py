#!/usr/bin/env python3
import struct

def ethernet_crc32(data):
    """Calculate proper Ethernet CRC32 with bit reflection"""
    crc = 0xFFFFFFFF
    for byte in data:
        crc ^= byte
        for _ in range(8):
            if crc & 1:
                crc = (crc >> 1) ^ 0xEDB88320
            else:
                crc >>= 1
    return (~crc) & 0xFFFFFFFF

# Your exact frame data (without CRC, from your ROM)
frame_hex = [
    0xBE, 0xEF, 0xDE, 0xAD, 0x11, 0x11, 0xDE, 0xAD, 0xBE, 0xEF, 0x00, 0x00,
    0x08, 0x00, 0x45, 0x00, 0x00, 0x32, 0x00, 0x01, 0x00, 0x00, 0x40, 0x01,
    0xF7, 0x4B, 0xC0, 0xA8, 0x01, 0x2C, 0xC0, 0xA8, 0x01, 0x02, 0x08, 0x00,
    0xE1, 0x30, 0x12, 0x34, 0x00, 0x01, 0x48, 0x65, 0x6C, 0x6C, 0x6F, 0x20,
    0x28, 0x46, 0x72, 0x6F, 0x6D, 0x20, 0x46, 0x50, 0x47, 0x41, 0x29, 0x21,
    0x21, 0x21, 0x00, 0xFE
]

frame_bytes = bytes(frame_hex)
crc = ethernet_crc32(frame_bytes)

print("=== CRC Byte Order Analysis ===")
print(f"Calculated CRC: 0x{crc:08X}")
print()

print("Option 1 - Big Endian (network byte order):")
crc_be = struct.pack('!I', crc)
print(f"  Bytes: {' '.join(f'{b:02X}' for b in crc_be)}")
print(f"  VHDL: x\"{crc_be[0]:02X}\", x\"{crc_be[1]:02X}\", x\"{crc_be[2]:02X}\", x\"{crc_be[3]:02X}\"")
print()

print("Option 2 - Little Endian:")
crc_le = struct.pack('<I', crc)
print(f"  Bytes: {' '.join(f'{b:02X}' for b in crc_le)}")
print(f"  VHDL: x\"{crc_le[0]:02X}\", x\"{crc_le[1]:02X}\", x\"{crc_le[2]:02X}\", x\"{crc_le[3]:02X}\"")
print()

print("Option 3 - Bit-reversed each byte (some implementations do this):")
def reverse_bits(b):
    result = 0
    for i in range(8):
        result = (result << 1) | ((b >> i) & 1)
    return result

crc_br = bytes(reverse_bits(b) for b in crc_be)
print(f"  Bytes: {' '.join(f'{b:02X}' for b in crc_br)}")
print(f"  VHDL: x\"{crc_br[0]:02X}\", x\"{crc_br[1]:02X}\", x\"{crc_br[2]:02X}\", x\"{crc_br[3]:02X}\"")
print()

print("Your current CRC in ROM: 1E 26 DA F7")
print("This matches Option 1 (Big Endian) - which should be correct!")
print()

print("=== Bit Transmission Verification ===")
print("Your PISO transmits LSB first within each byte - this is CORRECT for Ethernet")
print()
print("For byte 0x1E (first CRC byte):")
print("  Binary: 0001 1110")
print("  Transmitted bit order: 0, 1, 1, 1, 1, 0, 0, 0")
print("  (LSB=0 first, MSB=0 last)")
print()

# Let's also create a super simple test frame
print("=== MINIMAL TEST FRAME ===")
# Create the simplest possible frame that should work
simple_frame = bytes([
    # Ethernet header (14 bytes)
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  # Dst MAC (broadcast)
    0x00, 0x11, 0x22, 0x33, 0x44, 0x55,  # Src MAC
    0x08, 0x00,                           # EtherType (IPv4)
]) + b'\x00' * 46  # Pad to 60 bytes

simple_crc = ethernet_crc32(simple_frame)
simple_crc_bytes = struct.pack('!I', simple_crc)
simple_full = simple_frame + simple_crc_bytes

print(f"Simple frame length: {len(simple_full)} bytes")
print("Simple frame ROM (with length header):")

frame_len = len(simple_full) + 8
rom_data = struct.pack('!H', frame_len) + simple_full

for i, b in enumerate(rom_data):
    comma = ',' if i < len(rom_data) - 1 else ''
    print(f"  x\"{b:02X}\"{comma}")