/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of user profile data of college students
*/

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var year = Student.junior
    var graduationDate = Date()

    static let `default` = Profile(username: "k_pillai")

    enum Student: String, CaseIterable, Identifiable {
        case freshman = "👶"
        case sophomore = "🔱"
        case junior = "🝑"
        case senior = "🎓"

        var id: String { self.rawValue }
    }
}
