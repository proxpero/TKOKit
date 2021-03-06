public extension Array {

    public var random: Element? {
        guard !self.isEmpty else { return nil }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }

}

