
import TKOKit

func square (x: Int) -> Int {
    return x * x
}

func incr (x: Int) -> Int {
    return x + 1
}

func isPrime (p: Int) -> Bool {
    if p <= 1 { return false }
    if p <= 3 { return true }
    for i in 2...Int(sqrtf(Float(p))) {
        if p % i == 0 {
            return false
        }
    }
    return true
}

func isEven (n: Int) -> Bool {
    return n % 2 == 0
}

4 + 3

5 |> square |> incr |> isPrime
6 |> square |> incr |> isPrime

