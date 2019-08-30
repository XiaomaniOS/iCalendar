import XCTest
@testable import iCalendar

final class iCalendarTests: XCTestCase {
    enum CalendarFile: String, CaseIterable {
        case basic
            
        var path: String {
            return bundle.path(forResource: rawValue, ofType: "ics") ?? ""
        }
        
        var bundle: Bundle {
            return Bundle(for: iCalendarTests.self)
        }
    }
        
    func testExample() {
        XCTAssertNotNil(iCalendar.Calendar.init(.vCalendar).timeZoneString)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
