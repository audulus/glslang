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
            exclude: [
                "_config.yml",
                "Android.mk",
                "BUILD.bazel",
                "BUILD.gn",
                "build_info.h.tmpl",
                "build_info.py",
                "build_overrides/build.gni",
                "build_overrides/glslang.gni",
                "build_overrides/spirv_tools.gni",
                "CHANGES.md",
                "ChooseMSVCCRT.cmake",
                "CMakeLists.txt",
                "CODE_OF_CONDUCT.md",
                "DEPS",
                "External/CMakeLists.txt",
                "gen_extension_headers.py",
                "glslang/CMakeLists.txt",
                "glslang/ExtensionHeaders/GL_EXT_shader_realtime_clock.glsl",
                "glslang/MachineIndependent/glslang.m4",
                "glslang/MachineIndependent/glslang.y",
                "glslang/OSDependent/Unix/CMakeLists.txt",
                "glslang/OSDependent/Web",
                "glslang/OSDependent/Windows",
                "glslang/updateGrammar",
                "gtests",
                "hlsl/CMakeLists.txt",
                "hlsl/stub.cpp",
                "known_good.json",
                "known_good_khr.json",
                "kokoro",
                "license-checker.cfg",
                "LICENSE.txt",
                "ndk_test/Android.mk",
                "ndk_test/jni/Application.mk",
                "ndk_test/test.cpp",
                "parse_version.cmake",
                "README-spirv-remap.txt",
                "README.md",
                "StandAlone",
                "standalone.gclient",
                "Test",
                "update_glslang_sources.py",
                "WORKSPACE"
            ],
            sources: ["glslang", "SPIRV", "OGLCompilersDLL"],
            publicHeadersPath: ".",
            cxxSettings: [.define("ENABLE_HLSL", to: "1")])
    ],
    cxxLanguageStandard: .cxx14
)
