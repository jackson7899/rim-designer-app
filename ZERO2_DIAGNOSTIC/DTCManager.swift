import Foundation

class DTCManager: ObservableObject {
    @Published var dtcList: [String] = []

    func readDTCs() {
        dtcList = ["P0171", "P0301", "U0100"]  // placeholder
    }

    func clearDTCs() {
        dtcList.removeAll()
    }
}