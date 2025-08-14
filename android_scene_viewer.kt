// native/android_scene_viewer.kt
val fileUrl = "https://TU_DOMINIO/assets/zapatilla.glb"
val title = "Zapatillas Pro"
val intentUri = "https://arvr.google.com/scene-viewer/1.0?file=" +
    Uri.encode(fileUrl) + "&mode=ar_only&title=" + Uri.encode(title)
val intent = Intent(Intent.ACTION_VIEW).apply {
    data = Uri.parse(intentUri)
    setPackage("com.google.ar.core")
}
startActivity(intent)
