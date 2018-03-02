//
//  TargetForTestingFileOwner.swift
//  LoadingView
//
//  Created by kidnapper on 02/03/2018.
//  Copyright © 2018 25sprout.com. All rights reserved.
//

import UIKit

class TargetForTestingFileOwner: UIViewController {
    
    let loadingView = LoadingView()
    
    @IBAction func unlikeAction(_ sender: Any) {
        loadingView.setupLoadingView(frame: view.frame, title: "已取消蒐藏", type: .unlike, displayTimeInterval: 15)
        loadingView.show()
    }
    @IBAction func cautionAction(_ sender: Any) {
        loadingView.setupLoadingView(frame: view.frame, title: "密碼需至少八碼\n包含英數字", type: .caution, displayTimeInterval: 15)
        loadingView.show()
    }
    @IBAction func likeAction(_ sender: Any) {
        loadingView.setupLoadingView(frame: view.frame, title: "已蒐藏", type: .like, displayTimeInterval: 15)
        loadingView.show()
    }
    @IBAction func successAction(_ sender: Any) {
        loadingView.setupLoadingView(frame: view.frame, title: "更新成功", type: .success, displayTimeInterval: 10)
        loadingView.show()
    }
    @IBAction func sendAction(_ sender: Any) {
        loadingView.setupLoadingView(frame: view.frame, title: "註冊成功", type: .send, displayTimeInterval: 10)
        loadingView.show()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadingView.setupLoadingView(frame: view.frame, title: "Testing", type: .caution, displayTimeInterval: 3)
        view.addSubview(loadingView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
