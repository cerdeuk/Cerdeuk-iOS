//
//  CategoryTabBar.swift
//  CERTI-iOS
//
//  Created by 김나연 on 7/8/25.
//

import SwiftUI

struct CategoryTabBar: View {
    
    @Binding var selectedCategory: JobCategory
    var onSearchTapped: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Text("카테고리별 자격증 검색")
                    .applyCertiFont(.sub_semibold_20)
                    .foregroundStyle(.grayscale500)
                    .frame(height: 26)
                
                HStack(spacing: 0) {
                    
                    Spacer()
                    
                    Button {
                        onSearchTapped()
                    } label: {
                        Image(.iconSearch24)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            JobCategorySegmentedControl(selectedCategory: $selectedCategory)
                .padding(.top, 22)
            
            Rectangle()
                .fill(Color.grayscale100)
                .frame(height: 1)
                .padding(.top, 13)
        }
    }
}
