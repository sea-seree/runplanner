//
//  AppCoordinator.swift
//  RunPlanner
//
//  Created by Seree Saengchan on 6/5/2569 BE.
//

import UIKit
import RxSwift

final class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    private let disposeBag = DisposeBag()
    
//    private var onboardingCoordinator: OnboardingCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    // TODO: implement
    func start() {
//        startOnboardingFlow()
    }
    
//    private func startOnboardingFlow() {
//        let coordinator = OnboardingCoordinator(navigationController: navigationController)
//        
//        onboardingCoordinator = coordinator
//    }
}
