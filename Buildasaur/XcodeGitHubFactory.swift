//
//  XcodeGitHubFactory.swift
//  Buildasaur
//
//  Created by Honza Dvorsky on 18/07/2015.
//  Copyright © 2015 Honza Dvorsky. All rights reserved.
//

import Foundation
import BuildaGitServer

extension GitHubFactory {
    
    public class func serverFromProject(project: Project) -> GitHubServer {
        
        //parse remote URL From project
        //device whether it's an enterprise or github hosted repo
        //call the right methods
        let server = GitHubFactory.githubServer(project.githubToken)
        
//        let server = GitHubFactory.enterpriseServer(, token: )
        return server
    }
}