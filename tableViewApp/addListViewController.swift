//
//  addListViewController.swift
//  tableViewApp
//
//  Created by 川田 文香 on 2020/09/06.
//  Copyright © 2020 kwdaaa.com. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBOutlet var addText: UITextField!
    
    // テキストボックスの中に入れられた値の配列
    var array = [String]()
    

    
    @IBAction func addButton(_ sender: Any) {
        
        print(array)
        
        // もしAPP起動時に取得されるデータが空じゃなかったら
        if UserDefaults.standard.object(forKey: "add") != nil {
            
        //　保存されている値をarrayの中に再度格納する
        array = UserDefaults.standard.object(forKey: "add")as! [String]
        
        // 配列に追加。（テキストフィールドに追加されたテキストを。nilも許容）
        array.append(addText.text!)
            
        }
        
        print(array)
        
        // App内に保存
        // UserDefaults.standard.set ※定型文
        // addという鍵をつける
        UserDefaults.standard.set(array, forKey: "add")
    
        
        
        print(array)
        
        
        // ナビゲーションコントローラーで画面を戻るとき　※定型文
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
