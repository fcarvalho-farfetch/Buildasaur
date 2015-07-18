//
//  GitHubFactory.swift
//  Buildasaur
//
//  Created by Honza Dvorsky on 13/12/2014.
//  Copyright (c) 2014 Honza Dvorsky. All rights reserved.
//

import Foundation

public class GitHubFactory {
    
    public class func enterpriseServer(host: String, token: String?) -> GitHubServer {
        
        //https://developer.github.com/v3/enterprise/#endpoint-urls
        let hostWithAPI = "\(host)/api/v3"
        return self.server(hostWithAPI, token: token)
    }
    
    public class func githubServer(token: String?) -> GitHubServer {
     
        let baseURL = "https://api.github.com"
        return self.server(baseURL, token: token)
    }
    
    private class func server(baseURL: String, token: String?) -> GitHubServer {
        
        let endpoints = GitHubEndpoints(baseURL: baseURL, token: token)
        let server = GitHubServer(endpoints: endpoints)
        return server
    }
    
}
