// 
//
// swift package   --swift-sdk swift-6.2.4-RELEASE_wasm   --build-path ./Sources/Client/.build   --allow-writing-to-directory ./   js   --product Client   --use-cdn

import JavaScriptKit
@main
struct Client {
    static func main() {
#if os(WASI)
        print("Hello from WASI!")
#else
        print("Hello from the host system!")
#endif
    }
}