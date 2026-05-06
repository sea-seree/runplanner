//
//  Array+Extension.swift
//  RunPlanner
//
//  Created by Seree Saengchan on 6/5/2569 BE.
//

extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0, index < count else { return nil }
        return self[index]
    }
}
