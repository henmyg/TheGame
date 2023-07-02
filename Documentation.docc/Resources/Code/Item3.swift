import Foundation
import SwiftData

@Model
class Item {
    var date: Date
    
    init(_ date: Date) {
        self.date = date
    }
}
