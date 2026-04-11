//
//  ImageUploader.swift
//  Social
//
//  Created by Abhijeet Kumar on 10/04/26.
//

import Foundation
import Supabase

struct ImageUploader {
    
    private let client: SupabaseClient
    private let bucket = "ProfileImage"
    
    init() {
        self.client = SupabaseClient(
            supabaseURL: URL(string: "https://hufrkaovjcdrhlnlqmks.supabase.co")!,
            supabaseKey: "sb_publishable_pCmEflv2puhkqQuBKh3Jhg_VshxfzdU"
        )
    }
    
    /// Upload profile image and return public URL
    func uploadProfileImage(
        userId: String,
        imageData: Data
    ) async throws -> String {
        
        let fileName = "\(UUID().uuidString).jpg"
        let path = "\(userId)/\(fileName)"
        
        // Upload
        try await client.storage
            .from(bucket)
            .upload(
                path,
                data: imageData,
                options: FileOptions(contentType: "image/jpeg")
            )
        
        // Get Public URL
        let url = try client.storage
            .from(bucket)
            .getPublicURL(path: path)
        
        return url.absoluteString
    }
}
