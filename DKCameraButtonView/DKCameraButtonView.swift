//
//  DKCameraButtonView.swift
//  DKCameraButtonView
//
//  Created by AKiet on 28/07/2023.
//  Copyright © 2023 DAKiet. All rights reserved.
//

import UIKit

protocol DKCameraButtonViewDelegate: AnyObject {
    func cameraButtonHandleAction(_ action: DKCameraButtonView.ActionType)
}

public final class DKCameraButtonView: UIView {
    
    enum ActionType {
        case takePhoto
        case startRecord
        case stopRecord
        case cancelRecord
    }
    
    // MARK: Properties
    private lazy var captureButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "ic_try_on_camera"), for: .normal)
        button.addTarget(self, action: #selector(takePhotoAction(_:)), for: .touchUpInside)
        
        return button
    }()
    
    weak var delegate: DKCameraButtonViewDelegate?
    
    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longPressAction(_:)))
        captureButton.addGestureRecognizer(longGesture)
        
        addSubview(captureButton)
        
        NSLayoutConstraint.activate([
            captureButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            captureButton.topAnchor.constraint(equalTo: topAnchor),
            captureButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            captureButton.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Handle actions
extension DKCameraButtonView {
    
    @objc private func longPressAction(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began { // Send button is being pressed, start recording
            delegate?.cameraButtonHandleAction(.startRecord)
        } else if sender.state == .ended { // Send button was released, stop recording
            delegate?.cameraButtonHandleAction(.stopRecord)
        } else if sender.state == .cancelled { // Send button long press gesture was cancelled, cancel recording
            delegate?.cameraButtonHandleAction(.cancelRecord)
        }
    }
    
    @objc private func takePhotoAction(_ sender: UIButton) {
        delegate?.cameraButtonHandleAction(.takePhoto)
    }
}
