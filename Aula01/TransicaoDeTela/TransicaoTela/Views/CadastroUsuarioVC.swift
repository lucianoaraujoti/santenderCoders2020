//
//  ViewController.swift
//  TransicaoTela
//
//  Created by Felipe Miranda on 23/09/20.
//

import UIKit

class CadastroUsuarioVC: UIViewController {
    
    // MARK: IBOutlets User
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var dataTextField: UITextField!
    
    
    // MARK: IBOutlets endereço

    @IBOutlet weak var ruaTextField: UITextField!
    @IBOutlet weak var complementoTextField: UITextField!
    @IBOutlet weak var cidadeTextField: UITextField!
    @IBOutlet weak var bairroTextField: UITextField!
    @IBOutlet weak var estadoTextField: UITextField!
    @IBOutlet weak var enderecoView: UIView!
    @IBOutlet weak var enderecoButton: UIButton!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    
    
    // MARK: View Layout
    fileprivate func configScreen() {
       
        self.enderecoView.isHidden = true
        self.enderecoButton.layer.cornerRadius = 4
        self.cadastrarButton.layer.cornerRadius = 4
    }
    
    fileprivate func configTextFields() {
        
        self.nomeTextField.delegate = self
        self.cpfTextField.delegate = self
        self.emailTextField.delegate = self
        self.dataTextField.delegate = self
        
//        self.ruaTextField.delegate = self
//        self.complementoTextField.delegate = self
//        self.cidadeTextField.delegate =  self
//        self.bairroTextField.delegate = self
//        self.estadoTextField.delegate = self

        
        self.ruaTextField.isUserInteractionEnabled = false
        self.complementoTextField.isUserInteractionEnabled = false
        self.cidadeTextField.isUserInteractionEnabled =  false
        self.bairroTextField.isUserInteractionEnabled = false
        self.estadoTextField.isUserInteractionEnabled = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configScreen()
        self.configTextFields()
        print("viewDidLoad first")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("viewWillDisappear first")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear first")
        print("===============")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear first")
    }
    
    
    
    @IBAction func cadastrarEndereco(_ sender: UIButton) {
    
        self.performSegue(withIdentifier: "CadastroEnderecoVC", sender: nil)
    
    }
    
    @IBAction func tappedCadastrarButton(_ sender: UIButton) {

       
        self.performSegue(withIdentifier: "DetailVC", sender: "Felipe")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc: DetailVC? = segue.destination as? DetailVC
        vc?.view.backgroundColor = .red
        vc?.myLabel.text = sender as? String
        
    }
}

extension CadastroUsuarioVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case self.nomeTextField:
            self.cpfTextField.becomeFirstResponder()
        case self.cpfTextField:
            self.emailTextField.becomeFirstResponder()
        case self.emailTextField:
            self.dataTextField.becomeFirstResponder()
        default:
            self.dataTextField.resignFirstResponder()
        }
        return true
    }
    
}


// nome
// cpf
// email
// data de nascimento
// endereço, numero, bairro, cidade, estado

// Quero objetos
// quero tratativa de return, quero validacao de campo vazio
// quero uma tela de Cadastro



