files=$(find . -name "*.proto")
protoc --dart_out=../lib/proto $files
protoc --swift_out=../ios/Proto $files