//
//  SponsorModule.swift
//  SponsorModule
//
//  Created by Tibor Bödecs on 2020. 06. 16..
//

import FeatherCore

final class SponsorModule: ViperModule {

    static var name: String = "sponsor"

    static var bundleUrl: URL? {
        Bundle.module.bundleURL
            .appendingPathComponent("Contents")
            .appendingPathComponent("Resources")
            .appendingPathComponent("Bundle")
    }

    func boot(_ app: Application) throws {
        app.hooks.register("installer", use: installerHook)
    }

    // MARK: - hooks
    
    func installerHook(args: HookArguments) -> ViperInstaller {
        SponsorInstaller()
    }
}
