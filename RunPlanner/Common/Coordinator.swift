//
//  Coordinator.swift
//  RunPlanner
//
//  Created by Seree Saengchan on 6/5/2569 BE.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
}
