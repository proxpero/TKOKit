import XCTest
import TKOKit

class FunctionsTests: XCTestCase {

    func testPipeForward() {

        func square (x: Int) -> Int { return x * x }
        func incr (x: Int) -> Int { return x + 1 }
        func isEven (n: Int) -> Bool { return n % 2 == 0 }

        let x1 = 6 |> incr |> square
        XCTAssertEqual(x1, 49)

        let x2 = 5 |> square |> incr |> isEven
        XCTAssertEqual(x2, true)
    }


}
