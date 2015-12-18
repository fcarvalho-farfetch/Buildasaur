//
//  BotNaming.swift
//  Buildasaur
//
//  Created by Honza Dvorsky on 16/05/2015.
//  Copyright (c) 2015 Honza Dvorsky. All rights reserved.
//

import Foundation
import XcodeServerSDK
import BuildaGitServer

class BotNaming {

    class func isBuildaBot(bot: Bot) -> Bool {
        return bot.name.hasSuffix(self.suffixForBuildaBot())
    }

    class func isBuildaBotBelongingToRepoWithName(bot: Bot, repoName: String) -> Bool {
        let prefix = self.prefixForBuildaBotInRepoWithName(repoName)
        let suffix = self.suffixForBuildaBot()

        return bot.name.hasPrefix(prefix) && bot.name.hasSuffix(suffix)
    }

    class func nameForBotWithBranch(branch: Branch, repoName: String) -> String {
        return "\(self.prefixForBuildaBotInRepoWithName(repoName, branch: branch)) Debug \(self.suffixForBuildaBot())"
    }

    class func nameForBotWithPR(pr: PullRequest, repoName: String) -> String {
        return "\(self.prefixForBuildaBotInRepoWithName(repoName, pr: pr)) Debug PR #\(pr.number) \(self.suffixForBuildaBot())"
    }

    class func prefixForBuildaBotInRepoWithName(repoName: String) -> String {
        return "[\(repoName.lowercaseString):"
    }

    class func prefixForBuildaBotInRepoWithName(reponame: String, branch: Branch) -> String {
        return "[\(reponame.lowercaseString):\(branch.name)]"
    }

    class func prefixForBuildaBotInRepoWithName(reponame: String, pr: PullRequest) -> String {
        return "[\(reponame.lowercaseString):\(pr.head.ref)]"
    }

    class func suffixForBuildaBotInRepoWithName(repoName: String) -> String {
        return "\(self.suffixForBuildaBot())"
    }

    class func suffixForBuildaBot() -> String {
        return "BuildaBot"
    }
}
