# protobuf-translator
It's a simple tool to serialize/deserialize protobuf files using only Docker.

## Deserialization
0. Store all protofile together in one folder, e.g `proto`.
1. Name the main proto file by the name of the main object, e.g. `MainObject.proto`
2. Name the binary as main object, e.g `MainObject.pb`
3. Run
    ```
    docker run -v /full/path/to/proto:/app asinitskiy/protobuf-translator:latest deserialize MainObject
    ```

## Serialization
0. Store all protofile together in one folder, e.g `proto`.
1. Name the main proto file by the name of the main object, e.g. `MainObject.proto`
2. Сreate the text description of your object in the textproto format and name it `MainObject.textproto`
3. Run
    ```
    docker run -v /full/path/to/proto:/app asinitskiy/protobuf-translator:latest serialize MainObject
    ```
