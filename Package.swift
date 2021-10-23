// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2016-2021 The Khronos Group Inc.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "glslang",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "glslang",
            targets: ["glslang"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "glslang",
            dependencies: [],
            path: ".",
            exclude: ["glslang/CMakeLists.txt",
                      "glslang/OSDependent/Windows",
                      "glslang/OSDependent/Unix/CMakeLists.txt",
                      "glslang/OSDependent/Web",
                      "glslang/MachineIndependent/glslang.y",
                      "glslang/MachineIndependent/glslang.m4",
                      "glslang/ExtensionHeaders/GL_EXT_shader_realtime_clock.glsl",
                      "glslang/updateGrammar",
                      "Test",
                      "gtests",
                      "kokoro",
                      "LICENSE.txt"],
            sources: ["glslang", "SPIRV", "OGLCompilersDLL"],
            publicHeadersPath: ".",
            cxxSettings: [.define("ENABLE_HLSL", to: "1")])
    ],
    cxxLanguageStandard: .cxx14
)
