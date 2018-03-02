//
//  loadingView.swift
//  LoadingView
//
//  Created by kidnapper on 26/02/2018.
//  Copyright © 2018 25sprout.com. All rights reserved.
//

import UIKit

enum LoadingType {
    case caution
    case success
    case like
    case unlike
    case send
}

class LoadingView: UIView {

    
    @IBOutlet var contentView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    var seconds: TimeInterval = 5
    var timer = Timer()
    var type: LoadingType = .send {
        didSet {
            switch type {
            case .caution:
                imageView.image = #imageLiteral(resourceName: "img_indicate_alert_caution")
            case .success:
                imageView.image = #imageLiteral(resourceName: "img_indicate_toast_success")
            case .like:
                imageView.image = #imageLiteral(resourceName: "img_indicate_alert_like")
            case .unlike:
                imageView.image = #imageLiteral(resourceName: "img_indicate_alert_unlike")
            default:
                // send
                imageView.image = #imageLiteral(resourceName: "img_indicate_toast_send")
            }
        }
    }
    
    
    init() {
        super.init(frame: CGRect.zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)
        addSubview(contentView)
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func setupLoadingView(frame: CGRect, title: String, type: LoadingType, displayTimeInterval: TimeInterval?){
        
        let attributes = [NSAttributedStringKey.font: UIFont(name: "PingFangTC-Light", size: 16)! ]
        let attributedString = NSMutableAttributedString(string: title, attributes: attributes)
        self.label.attributedText = attributedString
        self.contentView.frame = frame
        self.alpha = 0
        self.type = type
        self.seconds = displayTimeInterval ?? self.seconds
    }
    
    func show() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        self.fadeIn()
    }
    
    func hide() {
        self.fadeOut()
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
//    }
    
    @objc func updateTimer() {
        if seconds < 1 {
            fadeOut()
            timer.invalidate()
        }
        else {
            seconds -= 1
        }
    }
    
    
    func fadeIn(duration: TimeInterval = 0.1,
                delay: TimeInterval = 0.0,
                completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in }) {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: UIViewAnimationOptions.curveEaseIn,
                       animations: {
                        self.alpha = 1.0
        }, completion: completion)
    }
    
    func fadeOut(duration: TimeInterval = 0.5,
                 delay: TimeInterval = 0.0,
                 completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in }) {
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: UIViewAnimationOptions.curveEaseIn,
                       animations: {
                        self.alpha = 0.0
        }, completion: completion)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

