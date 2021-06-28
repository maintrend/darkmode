//
//  FavouriteViewController.swift
//  DarkMode
//
//  Created by talgat on 6/28/21.
//

import Foundation
import UIKit

class FavouriteViewController: UIViewController {
    

    let imageView = UIImageView(image: #imageLiteral(resourceName: "iOS13_BlueWhite_FlareZephyr"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMainImageView()
    
        
        let blurEffect = UIBlurEffect(style: .systemThinMaterial)
        let blurView = configureBlurView(effect: blurEffect)
        view.addSubview(blurView)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .secondaryLabel)
        let vibrancyView = configureVibrancyView(effect: vibrancyEffect)
        blurView.contentView.addSubview(vibrancyView)
        
        let vibrancyLabel = configureVibrantLabel()
        vibrancyView.contentView.addSubview(vibrancyLabel)
//        view.addSubview(vibrancyLabel)
        vibrancyLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        vibrancyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setupMainImageView() {
        view.backgroundColor = .white
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
    }
    
    func configureBlurView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 200, left: 32, bottom: 200, right: 32))
        return view
    }
    
    func configureVibrancyView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 210, left: 42, bottom: 210, right: 42))
        return view
    }
    
    func configureVibrantLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Чарын"
        label.textColor = .systemBackground
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        return label
    }
    
}

