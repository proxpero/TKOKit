public extension Dictionary {

    public init<S: Sequence>(_ sequence: S) where S.Iterator.Element == (Key, Value) {
        self = [:]
        self.merge(sequence)
    }

    public mutating func merge<S: Sequence>(_ other: S) where S.Iterator.Element == (Key, Value) {
        for (k, v) in other {
            self[k] = v
        }
    }

    public func mapValues<NewValue>(transform: (Value) -> NewValue) -> [Key: NewValue] {
        return Dictionary<Key, NewValue>(self.map { entry in
            (entry.key, transform(entry.value))
        })
    }
    
}
