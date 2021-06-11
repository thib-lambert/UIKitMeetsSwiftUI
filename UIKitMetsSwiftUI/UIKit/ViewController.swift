//
//  ViewController.swift
//  UIKitMetsSwiftUI
//
//  Created by Thibaud Lambert on 11/06/2021.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet private weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hostingController = UIHostingController(rootView: SUIHelloWorld())

        /// Add as a child of the current view controller.
        self.addChild(hostingController)

        /// Add the SwiftUI view to the view controller view hierarchy.
        self.view.addSubview(hostingController.view)

        /// Setup the contraints to update the SwiftUI view boundaries.
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            hostingController.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            hostingController.view.topAnchor.constraint(greaterThanOrEqualTo: self.view.safeAreaLayoutGuide.topAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            hostingController.view.bottomAnchor.constraint(greaterThanOrEqualTo: self.button.topAnchor),
            
        ])

        /// Notify the hosting controller that it has been moved to the current view controller.
        hostingController.didMove(toParent: self)
    }

    // MARK: - Actions
    @IBAction private func goTo() {
        var view = SUIList()
        view.data = Array(1...25).compactMap { String($0) }
        
        let viewController = UIHostingController(rootView: view)
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}
