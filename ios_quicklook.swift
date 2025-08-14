// native/ios_quicklook.swift
import SwiftUI
import QuickLook

struct ARQuickLookView: UIViewControllerRepresentable {
    let url: URL // https://TU_DOMINIO/assets/zapatilla.usdz
    func makeUIViewController(context: Context) -> QLPreviewController {
        let ctrl = QLPreviewController()
        ctrl.dataSource = context.coordinator
        return ctrl
    }
    func updateUIViewController(_ vc: QLPreviewController, context: Context) {}
    func makeCoordinator() -> Coordinator { Coordinator(self) }
    class Coordinator: NSObject, QLPreviewControllerDataSource {
        let parent: ARQuickLookView
        init(_ parent: ARQuickLookView) { self.parent = parent }
        func numberOfPreviewItems(in controller: QLPreviewController) -> Int { 1 }
        func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
            return parent.url as NSURL
        }
    }
}
