// The Swift Programming Language
// https://docs.swift.org/swift-book

import Hummingbird

@main
struct Server {
    static func main() async throws {
        // create router and add a single GET /hello route
        let router = Router()
        router.get("/") { request, _ -> String in
            return "Hello"
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
