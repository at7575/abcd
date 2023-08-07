//
//
// Copyright © 2023 THALES. All rights reserved.
//
    

import Foundation
import MachO
import os.log
import SDKXYZ

public class ABC {

    static let log = OSLog(subsystem: Bundle.main.bundleIdentifier ?? "", category: "ABC")

    public static func printInfo() {
        XYZ.printInfo()
        let info = NXGetLocalArchInfo()
        let archString = NSString(utf8String: (info?.pointee.description)!) ?? "N/A"
        os_log("SDK ABC running on 1.0.0 %{public}@", log: log, type: .info, archString)
    }
}
