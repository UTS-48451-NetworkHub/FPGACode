import binascii

def ethernet_crc32(hex_str: str) -> int:
    data = bytes.fromhex(hex_str)
    # Compute CRC32 (reflected poly 0xEDB88320, same as binascii.crc32)
    crc = binascii.crc32(data) & 0xFFFFFFFF
    # Ethernet CRC is inverted
    crc ^= 0xFFFFFFFF
    return crc

if __name__ == "__main__":
    frame_hex = "beefdead1111deadbeef00004500002c0001000040010000c0a80164c0a8016548656c6c6f2046504741212121212121"
    crc = ethernet_crc32(frame_hex)
    print(f"Ethernet CRC32: 0x{crc:08X}")
    # Also show bytes in transmission order (little-endian)
    crc_bytes = crc.to_bytes(4, byteorder="little")
    print("CRC transmit order:", crc_bytes.hex())
