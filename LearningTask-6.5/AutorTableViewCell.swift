//
//  AutorTableViewCell.swift
//  LearningTask-6.5
//
//  Created by jeovane.barbosa on 12/11/22.
//

import UIKit

class AutorTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var tecnologiasLabel: UILabel!
    
    
    func setup(para autor: Autor){
        nomeLabel.text = autor.nome
        tecnologiasLabel.text = autor.tecnologias.joined(separator: ", ")
    }
    
    override func prepareForReuse() {
        nomeLabel.text = nil
        tecnologiasLabel.text = nil
    }

}
