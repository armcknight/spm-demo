//
//  Package.swift
//  spm-demo-app
//
//  Created by Andrew McKnight on 3/28/16.
//  Copyright © 2016 Two Ring Software. All rights reserved.
//

import PackageDescription

let package = Package(
    name:  "spm-demo-app-spm-dependencies",
    dependencies: [
        .Package(url: "https://github.com/armcknight/columnize.swift.git", majorVersion: 1)
    ]
)
