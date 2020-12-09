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
        Bundle.module.resourceURL?.appendingPathComponent("Bundle")
    }

    func boot(_ app: Application) throws {
        app.hooks.register("system-variables-install", use: systemVariablesInstallHook)
    }

    // MARK: - hooks
    
    func systemVariablesInstallHook(args: HookArguments) -> [[String: Any]] {
        [
            [
                "key": "sponsor.isEnabled",
                "name": "Sponsor box enabled",
                "value": "true",
                "note": "If enabled the box will appear when you inline the Sponsor/Box template",
            ],
            [
                "key": "sponsor.title",
                "name": "Sponsor box title",
                "value": "Sponsor title",
                "note": "Title of the sponsor box",
            ],
            [
                "key": "sponsor.description",
                "name": "Sponsor box description",
                "value": "Sponsor description",
                "note": "Used as a content for the sponsor box (can contain HTML text)",
            ],
            [
                "key": "sponsor.image.alt",
                "name": "Sponsor image alt text",
                "value": "The.Swift.Dev.",
                "note": "Alternative text for the sponsor image",
            ],
            [
                "key": "sponsor.image.url",
                "name": "Sponsor image URL",
                "value": "https://theswiftdev.com/images/logos/logo.png",
                "note": "Image URL for the sponsor box",
            ],
            [
                "key": "sponsor.button.title",
                "name": "Sponsor CTA button title",
                "value": "The.Swift.Dev.",
                "note": "CTA button title for the sponsor box",
            ],
            [
                "key": "sponsor.button.url",
                "name": "Sponsor CTA button url",
                "value": "https://theswiftdev.com/",
                "note": "CTA button link for the sponsor box",
            ],
            [
                "key": "sponsor.more.title",
                "name": "Sponsor more button title",
                "value": "Learn more",
                "note": "Learn more button title for the sponsor box",
            ],
            [
                "key": "sponsor.more.url",
                "name": "Sponsor more button url",
                "value": "/about/",
                "note": "Learn more button url for the sponsor box",
            ],
        ]
    }
}
