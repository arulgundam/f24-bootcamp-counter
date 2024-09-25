//
//  SettingsView.swift
//  counter
//
//  Created by Arul Gundam on 9/24/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxCount: Int

    var body: some View {
        HStack {
            Stepper("Max Count: \(maxCount)", value: $maxCount)
                .padding()
                .background(Color.white, in: .rect(cornerRadius: 10))
        }
        .padding(.horizontal, 20)
        .font(.system(size: 30))
    }
}

#Preview {
    SettingsView(maxCount: .constant(10))
}
