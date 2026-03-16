# Swift Portfolio - Main Site

A premium, visually stunning portfolio website built with **Swift 6.2** and the **Hummingbird** server framework. This project showcases the versatility of Swift across different domains: Embedded Systems, Creative Coding, Full-Stack Web, and Multi-platform development.

## 🚀 Architecture

The project follows a modular Client-Server architecture implemented as a Swift Package:

- **Server**: A high-performance web server built with [Hummingbird 2.0](https://github.com/hummingbird-project/hummingbird). It serves static assets and provides the foundation for future API expansions.
- **Client**: A modern, responsive front-end using Vanilla HTML5, CSS3 (with Glassmorphism and custom animations), and JavaScript.
- **Shared**: A placeholder module for sharing Swift models and logic between the client (via Wasm) and server.

## ✨ Features

- **Premium Design**: Dark-mode aesthetic with glassmorphism, floating particle animations, and smooth scroll reveals.
- **Project Showcase**:
  - **ESP32 Irrigation Controller**: Embedded Swift firmware for IoT.
  - **Physics Interaction Engine**: Real-time rigid body dynamics simulation.
  - **Animation Framework**: Manim-inspired ECS animation engine.
  - **Portfolio Server**: The Swift backend powering this site.
- **Interactive Subpages**: Dedicated deep-dives for Embedded, Full-Stack, Creative Coding, and Platform coverage.
- **Recursive Server**: The site is served by a server that is itself featured as a project.

## 🛠 Tech Stack

- **Backend**: Swift 6.2, Hummingbird 2.0
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Design**: Google Fonts (Inter, JetBrains Mono), HSL Color Palettes, Glassmorphism
- **Platform**: macOS 14.0+ (Development), Linux (Production)

## 🏃 Getting Started

### Prerequisites

- Swift 6.2 or later
- macOS 14.0+ (as defined in `Package.swift`)

### Running Locally

1. Clone the repository (if not already done).
2. Navigate to the `mainSite` directory:
   ```bash
   cd mainSite
   ```
3. Run the Hummingbird server:
   ```bash
   swift run Server
   ```
4. Open your browser and navigate to:
   ```
   http://localhost:8080
   ```

## 📂 Project Structure

```text
mainSite/
├── Package.swift          # Swift Package Manager configuration
├── Sources/
│   ├── Server/            # Hummingbird server implementation
│   │   └── Server.swift
│   ├── Client/
│   │   └── public/        # Static website assets (HTML, CSS, JS)
│   │       ├── index.html
│   │       ├── styles.css
│   │       ├── script.js
│   │       └── ... (subpages)
│   └── Shared/            # Shared logic and models
└── README.md
```

## 📜 License

Created with ♥ by Tirdon.
