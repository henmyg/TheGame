// Henrik Top Mygind, 29/06/2023

import Foundation
import SwiftData

@Model
final class Loss {
    var date: Date
    
    init(date: Date) {
        self.date = date
    }
}

extension Array where Element == Loss {
    /// String reprensentaion of the time of the most recent loss.
    var recentLoss: String {
        guard let mostRecent = self
            .map({ $0.date })
            .max()
        else { return "--" }
        
        return mostRecent.formatted(date: .numeric, time: .shortened)
    }
}
