//
//  ProdutosVC.swift
//  LojaVirtual
//
//  Created by Rodrigo de Sousa Santos on 02/10/20.
//  Copyright © 2020 Rodrigo de Sousa Santos. All rights reserved.
//

import UIKit

class ProdutosVC: UIViewController {
    
    @IBOutlet weak var produtosTableView: UITableView!
    
    var categorias: [String] = ["Eletrônicos", "Lazer", "Eletrodomésticos"]
    
    var produtos: [Produto] = [
        Produto(nome: "Bicicleta", preco: "R$ 400,00"),
        Produto(nome: "Bola de Futebol", preco: "R$ 10,00"),
        Produto(nome: "Macbook", preco: "R$ 5.000,00")
    ]
    
    private func configTableView(){
        
        self.produtosTableView.dataSource = self
        self.produtosTableView.delegate = self
        self.produtosTableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        
        self.produtosTableView.tableFooterView = UIView(frame: .zero)
    }
}

// MARK: - Table view data source
extension ProdutosVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return categorias.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 3
        case 1:
            return 2
        case 2:
            return 1
        default:
            return 0
        }
        
        
    }
        

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = produtosTableView.dequeueReusableCell(withIdentifier: "ProdutoCell", for: indexPath)
        cell.textLabel?.text = produtos[indexPath.row].nome
        cell.detailTextLabel?.text = produtos[indexPath.row].preco
        print(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categorias[section]
    }
}

extension ProdutosVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
