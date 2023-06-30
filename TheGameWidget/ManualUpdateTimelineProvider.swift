// Henrik Top Mygind, 30/06/2023
import WidgetKit

/// Timeline provider that only triggers on manual widget updates.
/// Use ``WidgetCenter.shared.reloadTimelines(ofKind: )`` to update the widget.
struct ManualUpdateTimelineProvider: TimelineProvider {

    func placeholder(in context: Context) -> DateEntry {
        DateEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (DateEntry) -> ()) {
        let entry = DateEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<DateEntry>) -> ()) {
        getSnapshot(in: context) { entry in
            completion(Timeline(
                entries: [entry],
                policy: .never
            ))
        }
    }
}
