import Foundation

class UDSManager {
    enum UDSError: Error {
        case invalidResponse
        case negativeResponse
    }

    // MARK: - Seed-Key Placeholder
    func generateKey(from seed: [UInt8]) -> [UInt8] {
        // Simple XOR placeholder (replace with OEM logic)
        return seed.map { $0 ^ 0xAA }
    }

    // MARK: - UDS Commands
    func requestSeed() -> [UInt8] {
        return [0x27, 0x01]
    }

    func sendKey(seed: [UInt8]) -> [UInt8] {
        let key = generateKey(from: seed)
        return [0x27, 0x02] + key
    }

    func readDataByIdentifier(did: UInt16) -> [UInt8] {
        return [0x22, UInt8(did >> 8), UInt8(did & 0xFF)]
    }

    func writeDataByIdentifier(did: UInt16, bytes: [UInt8]) -> [UInt8] {
        return [0x2E, UInt8(did >> 8), UInt8(did & 0xFF)] + bytes
    }
}