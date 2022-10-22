//
//  Data.swift
//  106HW
//
//  Created by Карина Хайрулина on 21.10.2022.
//


struct Authors {
    let name: String
    let surname: String
    let portetImageView: String
}

struct Serials {
    let name: String
    let raiting: Double
    let date: Int
    let actor: String
    
    public func infoList() {
        print(" \(name)", "Raiting: \(raiting)", "Actor: \(actor)", "Relise: \(date)")
         }
}





func getAuthors() -> [Authors] {
        [
            Authors(
                name: "Mark",
                surname: "Cherry",
                portetImageView: "Mark Cherry"
            ),
            Authors(
                name: "Bryan",
                surname: "Cogman",
                portetImageView: "Bryan Cogman"
            ),
            Authors(
                name: "Álex",
                surname: "Pina",
                portetImageView: "Álex Pina"
            ),
            
            Authors(
                name: "Andrzej",
                surname: "Sapkowski",
                portetImageView: "Andrzej Sapkowski"
            ),
            Authors(
                name: "Laurie",
                surname: "Nunn",
                portetImageView: "Laurie Nunn"
            )
            
        ]
}


func getSerials() -> [Serials] {
        [
            Serials(
                name:"Why womens kill",
                raiting: 8.3,
                date: 2019,
                actor: "Lucy Liu"
            ),
            Serials(
                name:"The Witcher",
                raiting: 7.3,
                date: 2019,
                actor: "Henry Cavill"
            ),
            Serials(
                name:"Stalk",
                raiting: 7.2,
                date: 2019,
                actor: "Carmen Kassovitz"
            ),
            Serials(
                name:"Game of Thrones",
                raiting: 9.0,
                date: 2011,
                actor: "Emilia Clarke"
            ),
            Serials(
                name:"La casa de papel",
                raiting: 8.1,
                date: 2017,
                actor: "Álvaro Antonio García"
            ),
            Serials(
                name:"Emily in Paris",
                raiting: 7.3,
                date: 2020,
                actor: "Lily Jane Collins"
            ),
            Serials(
                name:"The Queen's Gambit",
                raiting: 8.3,
                date: 2020,
                actor: "Anya Taylor-Joy"
            ),
            Serials(
                name:"Stranger Things",
                raiting: 8.4,
                date: 2016,
                actor: "Millie Bobby Brown"
            ),
            Serials(
                name:"Lupin",
                raiting: 7.4,
                date:2021,
                actor: "Omar Sy"
            ),
            Serials(
                name:"The Crown",
                raiting: 8.3,
                date: 2016,
                actor: "Harry Hadden-Paton"
            )
        ]
    
}

