//
//  UserData.swift
//  Landmarks
//
//  Created by 박준홍 on 2020/06/23.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
