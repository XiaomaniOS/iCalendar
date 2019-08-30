import XCTest

import iCalendarTests

var tests = [XCTestCaseEntry]()
tests += iCalendarTests.allTests()
XCTMain(tests)
