////
////  target_VC.swift
////  LoadingView
////
////  Created by kidnapper on 02/03/2018.
////  Copyright © 2018 25sprout.com. All rights reserved.
////
//
//import UIKit
//
//class Target_VC: UIViewController {
//    
//    @IBAction func addUnlike(_ sender: Any) {
//        addUnlikeLoadingView()
//    }
//    @IBAction func addLike(_ sender: Any) {
//        addLikeLoadingView()
//    }
//    @IBAction func addCaution(_ sender: Any) {
//        addCautionLoadingView()
//    }
//    @IBAction func addSuccess(_ sender: Any) {
//        addSuccessLoadingView()
//    }
//    @IBAction func addSend(_ sender: Any) {
//        addSendLoadingView()
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    func addLikeLoadingView() {
//        for subView in view.subviews {
//            if let previousLoadingView = subView as? LoadingView {
//                previousLoadingView.fadeOut(duration: 0.1)
//            }
//        }
//        var loadingView = LoadingView(displayTimeInterval: 5)
//        loadingView = loadingView.loadViewFromNib(title: "已蒐藏", type: .like)
//        loadingView.frame = view.frame
//        view.addSubview(loadingView)
//    }
//    
//    func addUnlikeLoadingView() {
//        for subView in view.subviews {
//            if let previousLoadingView = subView as? LoadingView {
//                previousLoadingView.fadeOut(duration: 0.1)
//            }
//        }
//        var loadingView = LoadingView(displayTimeInterval: 5)
//        loadingView = loadingView.loadViewFromNib(title: "已取消蒐藏", type: .unlike)
//        loadingView.frame = view.frame
//        view.addSubview(loadingView)
//    }
//    
//    func addCautionLoadingView() {
//        for subView in view.subviews {
//            if let previousLoadingView = subView as? LoadingView {
//                previousLoadingView.fadeOut(duration: 0.1)
//            }
//        }
//        var loadingView = LoadingView(displayTimeInterval: 5)
//        loadingView = loadingView.loadViewFromNib(title: "密碼需至少八碼\n包含英數字", type: .caution)
//        loadingView.frame = view.frame
//        view.addSubview(loadingView)
//    }
//    
//    func addSuccessLoadingView() {
//        for subView in view.subviews {
//            if let previousLoadingView = subView as? LoadingView {
//                previousLoadingView.fadeOut(duration: 0.1)
//            }
//        }
//        var loadingView = LoadingView(displayTimeInterval: 5)
//        loadingView = loadingView.loadViewFromNib(title: "更新成功", type: .success)
//        loadingView.frame = view.frame
//        view.addSubview(loadingView)
//    }
//    
//    func addSendLoadingView() {
//        for subView in view.subviews {
//            if let previousLoadingView = subView as? LoadingView {
//                previousLoadingView.fadeOut(duration: 0.1)
//            }
//        }
//        var loadingView = LoadingView(displayTimeInterval: 5)
//        loadingView = loadingView.loadViewFromNib(title: "註冊成功", type: .send)
//        loadingView.frame = view.frame
//        view.addSubview(loadingView)
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
//
