import Foundation

struct CANFrame {
    var id: UInt32
    var bytes: [UInt8]

    init(id: UInt32, bytes: [UInt8]) {
        self.id = id
        self.bytes = Array(bytes.prefix(8))   // max 8 bytes for classic CAN
    }
}

class CANEditor {
    func buildFrame(idHex: String, dataHex: String) -> CANFrame? {
        guard let id = UInt32(idHex, radix: 16) else { return nil }

        let cleaned = dataHex.replacingOccurrences(of: " ", with: "")
        var bytes: [UInt8] = []

        var idx = cleaned.startIndex
        while idx < cleaned.endIndex {
            let next = cleaned.index(idx, offsetBy: 2)
            if next <= cleaned.endIndex {
                let byte = cleaned[idx..<next]
                if let b = UInt8(byte, radix: 16) {
                    bytes.append(b)
                }
            }
            idx = next
        }

        return CANFrame(id: id, bytes: bytes)
    }
}