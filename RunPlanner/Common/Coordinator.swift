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

// MARK: - should know 📃
//  ทำไมต้องมี Protocol นี้?
//  เพราะ Coordinator ทุกตัวในระบบ (AppCoordinator, OnboardingCoordinator ฯลฯ)
//  จะต้อง conform protocol เดียวกัน ทำให้เราแน่ใจว่าทุกตัวมี navigationController และ start() เสมอ
//  เหมือนสัญญาว่า "ถ้าเป็น Coordinator ต้องมีของพวกนี้นะ"
