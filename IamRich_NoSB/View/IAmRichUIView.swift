//
//  IAmRichUIView.swift
//  IamRich_NoSB
//
//  Created by Raúl Pavón on 28/01/22.
//

import UIKit

class IAmRichUIView: UIView {
    
    enum IAmRichUIViewConstraints {
        enum LbIAmRich {
            static let fontSize: CGFloat = 40
            static let top: CGFloat = 112
            static let height: CGFloat = 47
        }
        enum imgDiamond {
            static let top: CGFloat = 109
            static let height: CGFloat = 251
            static let width: CGFloat = 270
        }
    }
    
    private lazy var mainContainer: UIView = {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = UIColor(hex: GlobalConstants.Color.greenBackground)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let imgDiamond: UIImageView = {
        let image = UIImageView(image: UIImage(named: GlobalConstants.IAmRich.imageName))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let lbIAmRich: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: GlobalConstants.Font.elvetica, size: IAmRichUIViewConstraints.LbIAmRich.fontSize)
        label.textColor = .white
        label.text = GlobalConstants.IAmRich.title
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initComponents()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func initComponents() {
        addComponents()
        setAutolayout()
    }
    
    private func addComponents() {
        addSubview(mainContainer)
        addSubview(imgDiamond)
        addSubview(lbIAmRich)
    }
    
    private func setAutolayout() {
        NSLayoutConstraint.activate([
            mainContainer.topAnchor.constraint(equalTo: topAnchor),
            mainContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            lbIAmRich.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: IAmRichUIViewConstraints.LbIAmRich.top)),
            lbIAmRich.centerXAnchor.constraint(equalTo: centerXAnchor),
            lbIAmRich.heightAnchor.constraint(equalToConstant: IAmRichUIViewConstraints.LbIAmRich.height),
            
            imgDiamond.topAnchor.constraint(equalTo: lbIAmRich.bottomAnchor, constant: IAmRichUIViewConstraints.imgDiamond.top),
            imgDiamond.centerXAnchor.constraint(equalTo: centerXAnchor),
            imgDiamond.heightAnchor.constraint(equalToConstant: IAmRichUIViewConstraints.imgDiamond.height),
            imgDiamond.widthAnchor.constraint(equalToConstant: IAmRichUIViewConstraints.imgDiamond.width),
        ])
    }
}
