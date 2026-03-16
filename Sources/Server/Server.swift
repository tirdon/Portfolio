// The Swift Programming Language
// https://docs.swift.org/swift-book

import Hummingbird

@main
struct Server {
    static func main() async throws {
        let router = Router()

        // Serve static files from the Client/public directory
        router.addMiddleware {
            FileMiddleware("Sources/Client/public", searchForIndexHtml: true)
        }

        // create application using router
        let app = Application(
            router: router,
            configuration: .init(address: .hostname("0.0.0.0", port: 8080))
        )
        // run hummingbird application
        try await app.runService()
    }
}
