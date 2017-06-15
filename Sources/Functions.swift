precedencegroup LeftApplyPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

precedencegroup FunctionCompositionPrecedence {
    associativity: right
    higherThan: LeftApplyPrecedence
}

/// Pipe forward function application.
infix operator |> : LeftApplyPrecedence

/**
 Pipe a value into a function.

 - parameter x: A value.
 - parameter f: A function

 - returns: The value from apply `f` to `x`.
 */
public func |> <A, B> (x: A, f: (A) -> B) -> B {
    return f(x)
}

/// Infix, flipped version of fmap (for arrays), i.e. `xs ||> f := f <^> xs`
infix operator ||> : LeftApplyPrecedence

/**
 Pipe a collection of values into a function, i.e. a flipped-infix operator for `map`.

 - parameter xs: An array of values.
 - parameter f:  A transformation.

 - returns: An array of transformed values.
 */
public func ||> <A, B> (xs: [A], f: (A) -> B) -> [B] {
    return xs.map(f)
}
