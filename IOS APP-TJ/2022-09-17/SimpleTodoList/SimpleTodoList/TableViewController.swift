//
//  TableViewController.swift
//  SimpleTodoList
//
//  Created by Kenny on 2022/09/17.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    
    var dataArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func dataInit(){
        dataArray.append("꽃선물 준비")
        dataArray.append("공기 청정기 필터 교환")
    }

    
    @IBAction func addList(_ sender: UIBarButtonItem) {
        let addAlert = UIAlertController(title: "Todo List", message: "추가할 내용을 입력하세요!", preferredStyle: .alert)
        addAlert.addTextField{ACTION in
            ACTION.placeholder = "추가 내용"
        }
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        let okAction = UIAlertAction(title: "추가", style: .default, handler: {ACTION in
            self.dataArray.append(addAlert.textFields![0].text!)
            self.tvListView.reloadData()
        })
        
        addAlert.addAction(cancelAction)
        addAlert.addAction(okAction)
        
        present(addAlert, animated: true, completion: nil)
    }
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        /*
        //하기 수정
        // Configure the cell...
        cell.textLabel?.text = dataArray[indexPath.row]
         */
        var content = cell.defaultContentConfiguration()
        content.text = dataArray[indexPath.row]
        content.image = UIImage(systemName: "square.and.arrow.up.fill") // 아이콘 가서 이름 복사해와야 함
        
        cell.contentConfiguration = content

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
