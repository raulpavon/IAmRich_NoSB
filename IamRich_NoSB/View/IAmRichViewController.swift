//
//  IamRichViewController.swift
//  IamRich_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import UIKit

class IAmRichViewController: UIViewController {
    
    weak var iAmRichCoordinator: IAmRichCoordinator?
    private let factory: IAmRichFactory
    
    private lazy var iAmRichUIView: IAmRichUIView = {
        let view = IAmRichUIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    required init(factory: IAmRichFactory, iAmRichCoordinator: IAmRichCoordinator) {
        self.factory = factory
        self.iAmRichCoordinator = iAmRichCoordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        initComponents()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    private func addComponents() {
        view.addSubview(iAmRichUIView)
    }
    
    private func setAutolayout() {
        NSLayoutConstraint.activate([
            iAmRichUIView.topAnchor.constraint(equalTo: view.topAnchor),
            iAmRichUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            iAmRichUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            iAmRichUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
