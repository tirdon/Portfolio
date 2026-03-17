// The Swift Programming Language
// https://docs.swift.org/swift-book

import Hummingbird
import Logging

@main
struct Server {
    static func main() async throws {
        let router = Router()

        // Serve static files from the Client/public directory
        router.addMiddleware {
            FileMiddleware("Sources/Client/public", searchForIndexHtml: false)
        }
        router.addMiddleware {
            FileMiddleware("Sources/Client/.build/plugins/PackageToJS/outputs", searchForIndexHtml: true)
        }

        let port = Int(Environment().get("PORT") ?? "8080") ?? 8080

        // create application using router
        let app = Application(
            router: router,
            configuration: .init(address: .hostname("0.0.0.0", port: port))
        )
        // run hummingbird application
        try await app.runService()
    }
}
