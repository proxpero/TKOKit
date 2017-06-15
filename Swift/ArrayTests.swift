import XCTest
import TKOKit

class ArrayTests: XCTestCase {

    func testRandomElementSuccess() {
        let source = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let sample = source.random
        XCTAssertNotNil(sample)
    }

    func testRandomElementFailure() {
        let source: Array<Any> = []
        let sample = source.random
        XCTAssertNil(sample)
    }

}
