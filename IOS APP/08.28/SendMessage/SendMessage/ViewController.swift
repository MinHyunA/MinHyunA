//
//  ViewController.swift
//  SendMessage
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvMessage: UITextView!
    @IBOutlet weak var tfMessage: UITextField!
    
    let emoji = "π"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setKeyboardEvent()
    }
    @IBAction func btnSend(_ sender: UIButton) {
        let check = tfMessage.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        if !check!.isEmpty{
            tvMessage.text += tfMessage.text! + "\n"
            tfMessage.text = ""
        }
        tfMessage.text = ""
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfMessage.text! += emoji
    }
    // μλ¬΄κ³³μ΄λ λλ¬ softkeyboard μ§μ°κΈ°
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //ν€λ³΄λ νΈλ€λ§μ μν΄ object-c call //selecter = func
    func setKeyboardEvent(){
        //ν€λ³΄λκ° λνλ¬μ λ, νλ©΄ μ¬λ¦¬λ ν¨μ
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillApear(_ :)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //ν€λ³΄λκ° μμ΄μ‘μ λ, νλ©΄ λ΄λ¦¬λ ν¨μ
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisapear(_ :)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillApear(_ sender:NotificationCenter){
        self.view.frame.origin.y = -50 // -κ° μλ‘ μ¬λΌκ°λ κ².
    }
    @objc func keyboardWillDisapear(_ sender:NotificationCenter){
        self.view.frame.origin.y = 0 // +κ° μλλ‘ λ΄λ¦¬λ κ².
    }
    
}

