//
//  RegisterPageViewController.swift
//  UserLoginAndRegistration
//
//  Created by 佐藤恒 on 2019/01/19.
//  Copyright © 2019年 佐藤恒. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userRepeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userRepeatPassword = userRepeatPasswordTextField.text
        
        // 空白確認
        if (userEmail == "" || userPassword == "" || userRepeatPassword == "") {
            //アラートメッセージ
            displayMyAlertMessage(userMessage: "全てのフォームに入力してください。")
            return
        }
        
        //パスワード一致確認
        if (userPassword != userRepeatPassword) {
            displayMyAlertMessage(userMessage: "パスワードが一致していません。")
            return
        }
        
        // データ登録
        UserDefaults.standard.set(userEmail, forKey:"userName")
        UserDefaults.standard.set(userPassword, forKey:"userPassword")
        //UserDefaults.standard.synchronize();
        
        // メッセージアラートなど
        let myAlert = UIAlertController(title:"Alert", message: "どうも、登録完了!!", preferredStyle:  UIAlertController.Style.alert)
        let okAction = UIAlertAction(title:"OK", style: UIAlertAction.Style.default) {
            action in self.dismiss(animated: true, completion:nil)
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true,completion:nil)
        
    }
    
    func displayMyAlertMessage(userMessage: String){
        
        let myAlert = UIAlertController(title:"Alert", message: userMessage, preferredStyle:  UIAlertController.Style.alert)
        let okAction = UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler:nil)
        myAlert.addAction(okAction);
        self.present(myAlert,animated:true, completion:nil)
        
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
