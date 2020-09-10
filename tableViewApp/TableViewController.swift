//
//  TableViewController.swift
//  tableViewApp
//
//  Created by 川田 文香 on 2020/09/06.
//  Copyright © 2020 kwdaaa.com. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    
//    var names:[String] = ["阿部","石田","上田"]
    
    // データを受け取るための受け皿
    var resultArray = [String]()
    
    
    
    
    // その画面に来たとき、何度も何度も読みこんでくれる。
    override func viewWillAppear(_ animated: Bool) {
        
        // .objectで受け取る。
        
        // UserDefaultが空でなければ
        if UserDefaults.standard.object(forKey: "add") != nil {
            
            // 現在UserDefaults　に保存されている配列の値をresultArrayに入れる
            resultArray = UserDefaults.standard.object(forKey: "add")as! [String]
        }
        
        
        // テーブルビューのリロード
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            resultArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
    }
    
    
    
    
    

//    var names:[String] = ["米倉","川田","金子","高橋","磯部","渋谷",]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print(names[3])
//        names[3] = "阿部"
//        print(names[3])
//
//        names.append("加藤")
//        print(names)
//
//        names.insert("立川", at: 1)
//        print(names)
//
//        names.remove(at:5)
//        print(names)
//
//        names.removeLast()
//        print(names)
//
//        names.removeAll()
//        print(names)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }

    // MARK: - Table view data source
    
    // セクションの数
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // セルの数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resultArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 「NameCell」というIdentifierを持つ場所へ。場所指定。
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        
        // 配列の数とセルの数揃えるためのコード
        cell.textLabel?.text = resultArray[indexPath.row]
        
        return cell
    }
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
