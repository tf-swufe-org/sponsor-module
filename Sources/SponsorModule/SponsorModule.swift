//
//  SponsorModule.swift
//  SponsorModule
//
//  Created by Tibor Bödecs on 2020. 06. 16..
//

import FeatherCore

final class SponsorModule: FeatherModule {

    static let moduleKey: String = "sponsor"

    static var bundleUrl: URL? { Bundle.module.resourceURL?.appendingPathComponent("Bundle") }

    func boot(_ app: Application) throws {
        app.hooks.register(.installVariables, use: installVariablesHook)
    }

    // MARK: - hooks
    
    func installVariablesHook(args: HookArguments) -> [VariableCreateObject] {
        [
            .init(key: "sponsorBoxIsEnabled",
                  name: "Sponsor box enabled",
                  value: "true",
                  notes: "If enabled the box will appear when you inline the Sponsor/Box template"),
            
            .init(key: "sponsorTitle",
                  name: "Sponsor box title",
                  value: "Sponsor title",
                  notes: "Title of the sponsor box"),
            
            .init(key: "sponsorExcerpt",
                  name: "Sponsor box excerpt",
                  value: "Sponsor excerpt",
                  notes: "Used as a content for the sponsor box (can contain HTML text)"),
            
            .init(key: "sponsorImageUrl",
                  name: "Sponsor image URL",
                  value: "https://theswiftdev.com/images/icons/icon-320.png",
                  notes: "Image URL for the sponsor box"),
            
            .init(key: "sponsorImageAlt",
                  name: "Sponsor image alt text",
                  value: "The.Swift.Dev.",
                  notes: "Alternative text for the sponsor image"),
            
            .init(key: "sponsorButtonLabel",
                  name: "Sponsor CTA button title",
                  value: "The.Swift.Dev.",
                  notes: "CTA button title for the sponsor box"),
            
            .init(key: "sponsorButtonUrl",
                  name: "Sponsor CTA button URL",
                  value: "https://theswiftdev.com/",
                  notes: "CTA button link for the sponsor box"),
            
            .init(key: "sponsorMoreLabel",
                  name: "Sponsor more button title",
                  value: "Learn more",
                  notes: "CTA button title for the sponsor box"),
            
            .init(key: "sponsorMoreUrl",
                  name: "Sponsor more button url",
                  value: "/about/",
                  notes: "Learn more button url for the sponsor box"),
        ]
    }
}
