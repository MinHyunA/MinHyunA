//
//  TableViewController.swift
//  Table
//
//  Created by TJ on 2022/09/04.
//

import UIKit



class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    
    var dataArray: [TodoList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        // Edit버튼을 만들고 삭제 기능 추가하기, 왼쪽으로 배치
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    func dataInit(){
        dataArray.append(TodoList(items: "책 구매", itemsImageFile: "cart.png"))
        dataArray.append(TodoList(items: "철수와 약속", itemsImageFile: "clock.png"))
        dataArray.append(TodoList(items: "스터디 준비하기", itemsImageFile: "pencil.png"))
        
    }
    
    // 데이터 추가후 내용 불러오기
    override func viewWillAppear(_ animated: Bool) {
        appendData()
        tvListView.reloadData()
    }
    
    func appendData(){
        if Message.check == "New"{
            dataArray.append(TodoList(items: Message.item, itemsImageFile: Message.itemsImageFile))
            Message.check = "Old"
        }
    }
    
    
    
    
    
    
    // MARK: - Table view data source
    
    // 보통은 테이블안에 섹션이 1개
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // 섹션당 열의 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    // 셀의 구성
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = dataArray[indexPath.row].items
        cell.imageView?.image = UIImage(named: dataArray[indexPath.row].itemsImageFile)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Table 셀 삭제
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    // Delete -> 삭제
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }

    
    // 목록 순서 바꾸기
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        // 이동할 item의 복사
        let itemToMove = dataArray[fromIndexPath.row]
        // 이동할 item의 삭제
        dataArray.remove(at: fromIndexPath.row)
        // 이동한 item을 삽입
        dataArray.insert(itemToMove, at: to.row)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDetail"{
            let cell = sender as! UITableViewCell
            let indexPath = tvListView.indexPath(for: cell)
            
            let detailView = segue.destination as! DetailViewController
            detailView.receiveItem = dataArray[indexPath!.row].items
        }
    }
    

}
