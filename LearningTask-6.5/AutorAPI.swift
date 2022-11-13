//
//  AutorApi.swift
//  LearningTask-6.5
//
//  Created by rafael.rollo on 12/04/2022.
//

import Foundation

/**
 Componente cliente da api de autores da casa do código.
 Implementação atual apenas simula um carregamento.
 Integrações com serviços HTTP estão fora do escopo da atividade atual e será tema mais a frente
 */
class AutorAPI {

    func listaTodos() -> [Autor] {
        return [
            Autor(foto: "https://s3.xpto/alberto.png",
                  nome: "Alberto", sobrenome: "Souza", bio: "Bio do Alberto",
                  tecnologias: "Java", "Spring", "Spring Cloud", "Play", "Block Chain"),
            Autor(foto: "https://s3.xpto/paula.png",
                  nome: "Paula", sobrenome: "Santana", bio: "Bio da Paula",
                  tecnologias: "Java", "Spring", "Kotlin", "Micronaut"),
            Autor(foto: "https://s3.xpto/rafael.png",
                  nome: "Rafael", sobrenome: "Rollo", bio: "Bio do Rafael",
                  tecnologias: "Swift", "iOS", "React Native", "Java", "Spring"),
            Autor(foto: "https://s3.xpto/ponte.png",
                  nome: "Rafael", sobrenome: "Ponte", bio: "Bio do Ponte",
                  tecnologias: "Java", "Spring", "Hibernate", "Kotlin", "Micronaut"),
            Autor(foto: "https://s3.xpto/yuri.png",
                  nome: "Yuri", sobrenome: "Matheus", bio: "Bio do Yuri",
                  tecnologias: "Java", "Spring", "Kotlin", "Micronaut"),
            Autor(foto: "https://s3.xpto/lucas.png",
                  nome: "Lucas", sobrenome: "Félix", bio: "Bio do Lucas",
                  tecnologias: "Java", "Spring", "Kotlin", "Micronaut"),
            Autor(foto: "https://s3.xpto/jordi.png",
                  nome: "Jordi", sobrenome: "Silva", bio: "Bio do Jordi",
                  tecnologias: "Java", "Spring", "Kotlin", "Micronaut"),
            Autor(foto: "https://s3.xpto/jackson.png",
                  nome: "Jackson", sobrenome: "Mota", bio: "Bio do Jackson",
                  tecnologias: "Java", "Spring", "Kotlin", "Micronaut"),
            Autor(foto: "https://s3.xpto/matheus.png",
                  nome: "Matheus", sobrenome: "Brandino", bio: "Bio do Matheus",
                  tecnologias: "Java", "Kotlin", "Android", "Flutter"),
        ]
    }
    
}
