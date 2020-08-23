//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2020. 08. 23..
//

import Foundation
import ViperKit

//@_cdecl("createModule")
public func createModule() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(SponsorBuilder()).toOpaque()
}

public final class SponsorBuilder: ViperBuilder {

    public override func build() -> ViperModule {
        SponsorModule()
    }
}
