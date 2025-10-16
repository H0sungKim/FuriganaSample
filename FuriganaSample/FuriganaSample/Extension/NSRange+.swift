//
//  NSRange+.swift
//  FuriganaSample
//
//  Created by 김호성 on 2025.10.16.
//

import Foundation

extension NSRange {
    public init(_ range: Range<Int>) {
        self.init(location: range.lowerBound, length: range.count)
    }
}
