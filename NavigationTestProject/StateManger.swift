//
//  StateManger.swift
//  NavigationTestProject
//
//  Created by El houssaine El GAMOUZ on 25/9/2024.
//

import Foundation
import Combine

class StateManger: ObservableObject {

    @Published  var selection: Int = 2
    @Published  var selectedListItem: Int? = 1
    @Published  var firstDetailIsShown: Bool = false
    @Published  var selectitem: String? = nil

    var subscriptions = Set<AnyCancellable>()

    init() {
        $firstDetailIsShown
            .filter({ !$0 })
            .removeDuplicates()
            .sink { [unowned self] value in
                self.selectitem = nil
            }
            .store(in: &subscriptions)
    }

    func goToFirstRootView() {
        selectitem = nil
        firstDetailIsShown = false
    }

}
