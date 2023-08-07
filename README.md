# README

* Dependency structure:
    * SampleApp depends on SDKABC.
    * SDKABC depends on SDKXYZ.
* All configuration is done through xcconfig and xcconfig is located at `$PROJECT_DIR/$PROJECT_NAME/Target Support Files`

## Build SDKABC
The following steps detail how to build SDKABC
1. Run the build script `SDKABC/build.sh`
2. The fraemwork artifacts is located at `SDKABC/build/Build/Products`
```
├── Debug-iphoneos
│   └── SDKABC.framework
└── Debug-iphonesimulator
    ├── SDKABC.framework
```

## Build an Run SampleApp
1. SampleApp look for dependency of SDK in the `$PROJECT_DIR`.
2. Run SampleApp in Xcode.

## Others Commands
To create xcframework:
`xcodebuild -create-xcframework -framework <framework1> -framework <framework2> -output <output.path>`

Or refer to manual:
`xcodebuild -create-xcframework -help`
