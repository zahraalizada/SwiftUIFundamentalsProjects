//
//  CountryManager.swift
//  TableCollectionTask
//
//  Created by Zahra Alizada on 13.04.24.
//

import Foundation

class CountryManager {
    func getCountries() -> [Country] {
        [
            .init(name: "Azərbaycan", image: "az-flag", cities: [City(name: "Bakı", description: "Azərbaycanın paytaxtı və ən böyük şəhəridir. Müasir memarlığı və tarixi İçəri Şəhər ilə tanınır.", image: "baki"),
                                                                 City(name: "Gəncə", description: "Azərbaycanın ikinci ən böyük şəhəridir. Tarixi abidələri və mədəni irsi ilə məşhurdur.", image: "gence")]),
            .init(name: "Türkiyə", image: "tr-flag", cities: [City(name: "Ankara", description: "Türkiyənin paytaxtıdır və çox sayda dövlət idarələri, diplomatik missiyalar burada yerləşir.", image: "ankara"),
                                                              City(name: "İstanbul", description: "İki qitəni birləşdirən bu şəhər, zəngin tarixi və mədəni irsi ilə dünyaca tanınır.", image: "istanbul"),
                                                              City(name: "İzmir", description: "Egey dənizinin sahilində yerləşən İzmir, ticarət və turizm mərkəzi olaraq bilinir.", image: "izmir")]),
            .init(name: "Böyük Britaniya", image: "en-flag", cities: [City(name: "London", description: "Böyük Britaniyanın paytaxtıdır və dünyanın ən böyük maliyyə mərkəzlərindən biridir.", image: "london"),
                                                                 City(name: "Derby", description: "Mühəndislik və sənaye sahəsində zəngin bir keçmişə sahibdir, xüsusilə dəmiryolu sənayesi ilə tanınır.", image: "derby"),
                                                                 City(name: "Kingston", description: "Temza çayının kənarında yerləşən bu şəhər, tarixi binaları və üniversiteti ilə tanınır.", image: "kingston"),
                                                                 City(name: "Nottingham", description: "Robin Hood əfsanəsi ilə məşhurdur və Nottingham Ormanı ilə əhatələnmişdir.", image: "nottingham")]),
            .init(name: "Almaniya", image: "de-flag", cities: [City(name: "Berlin", description: "Almaniyanın paytaxtı və ən böyük şəhəridir. Tarixi divarlar və müasir memarlıq qarışığı ilə tanınır.", image: "berlin"),
                                                              City(name: "Munih", description: "Bavariya əyalətinin paytaxtıdır. Oktoberfest festivalı və BMW muzeyi ilə məşhurdur.", image: "munih"),
                                                              City(name: "Frankfurt", description: "Almaniyanın maliyyə və nəşriyyat mərkəzi olaraq bilinir.", image: "frankfurt"),
                                                              City(name: "Hamburg", description: "Almaniyanın dəniz limanı şəhəridir və böyük ticarət limanı ilə tanınır.", image: "hamburg")]),
            .init(name: "Rusiya", image: "ru-flag", cities: [City(name: "Moskva", description: "Rusiyanın paytaxtı və ən böyük şəhəridir. Kremli və Qızıl Meydanı ilə məşhurdur.", image: "moskva"),
                                                            City(name: "Sankt-Peterburq", description: "Rusiyanın ikinci ən böyük şəhəri, 'Şimalın Venesiyası' ləqəbini alıb. Bir çox kanal və tarixi binalarla tanınır.", image: "st-petersburg"),
                                                             City(name: "Tver", description: "Moskva ilə Sankt-Peterburq arasında yerləşir. Əsrlər boyu tarixi əhəmiyyəti olan bir ticarət və sənaye mərkəzi olmuşdur.", image: "tver")])
        ]
    }
}
