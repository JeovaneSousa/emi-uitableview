//
//  ViewController.swift
//  LearningTask-6.5
//
//  Created by rafael.rollo on 12/04/2022.
//

import UIKit

class AutorViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var plusButton: UIButton!
    
    var zCodersStore: AutorStore?
    var api: AutorAPI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        loadAutores()
        applyTheme()


    }
    private func setupTableView(){
        tableview.delegate = self
        tableview.dataSource = self

    }
    private func loadAutores(){
        guard var store = zCodersStore else{return}
        store.todos = api?.listaTodos()
    }
}

extension AutorViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zCodersStore?.todos?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let autorCell = tableView.dequeueReusableCell(withIdentifier: "AutorViewCell", for: indexPath) as? AutorTableViewCell else{
            fatalError("Não foi possível recuperar célula")
        }
        let autor = zCodersStore?.todos![indexPath.row]
        autorCell.setup(para: autor!)
        return autorCell
    }
}


extension AutorViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}



