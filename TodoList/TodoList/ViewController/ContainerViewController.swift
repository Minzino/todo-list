//
//  ViewController.swift
//  TodoList
//
//  Created by 최예주 on 2022/04/04.
//

import UIKit

class ContainerViewController: UIViewController {
    var headerVC: HeaderViewController!
    var contentVC: ContentViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.backgroundColor = UIColor(red: 0.961, green: 0.961, blue: 0.969, alpha: 1).cgColor
        addChildViewController()
    }
}

private extension ContainerViewController{
    func addChildViewController(){
        headerVC = HeaderViewController()
        self.addChild(headerVC)
        self.view.addSubview(headerVC.view)
        
        contentVC = ContentViewController()
        self.addChild(contentVC)
        self.view.addSubview(contentVC.view)
        
        configureChildViewLayout()
    }
    
    func configureChildViewLayout(){
        let headerHeight: CGFloat = 72
        
        headerVC.view.translatesAutoresizingMaskIntoConstraints = false
        headerVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerVC.view.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerVC.view.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        headerVC.view.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
        
        contentVC.view.translatesAutoresizingMaskIntoConstraints = false
        contentVC.view.topAnchor.constraint(equalTo: headerVC.view.bottomAnchor).isActive = true
        contentVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        contentVC.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        contentVC.view.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
    }
}
