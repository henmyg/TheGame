// Henrik Top Mygind, 30/06/2023

import WidgetKit
import SwiftUI

@main
struct TheGameWidgetBundle: WidgetBundle {
    var body: some Widget {
        StatisticsWidget()
        LoseWidget()
    }
}
