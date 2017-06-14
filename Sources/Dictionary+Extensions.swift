//
//  Dictionary+Extensions.swift
//  TKOKit
//
//  Created by Todd Olsen on 6/14/17.
//
//

extension Dictionary {

    init<S: Sequence>(_ sequence: S) where S.Iterator.Element == (Key, Value) {
        self = [:]
        self.merge(sequence)
    }

    mutating func merge<S: Sequence>(_ other: S) where S.Iterator.Element == (Key, Value) {
        for (k, v) in other {
            self[k] = v
        }
    }

    func mapValues<NewValue>(transform: (Value) -> NewValue) -> [Key: NewValue] {
        return Dictionary<Key, NewValue>(map { (key, value) in
            return (key, transform(value))
        })
    }
    
}
