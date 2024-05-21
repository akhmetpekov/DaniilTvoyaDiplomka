//
//  Records.swift
//  SecureCare
//
//  Created by Erik on 21.05.2024.
//

import Foundation

struct Records {
    let record: String
    let date: String
    let description: String
}

extension Records {
    static func getRecords() -> [Records] {
        return [
            Records(record: "Lorem ipsum dolor sit amet, consectetur", date: "04.05.2023", description: """
                    Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur
                    """
                   ),
            Records(record: "Lorem ipsum dolor sit amet, consectetur", date: "04.05.2023", description: """
                    Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur
                    """),
            Records(record: "Lorem ipsum dolor sit amet, consectetur", date: "04.05.2023", description: """
                    Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur
                    """)
        ]
    }
}
