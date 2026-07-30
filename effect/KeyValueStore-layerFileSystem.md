Package: `@effect/platform`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.layerFileSystem

Provides a file-backed key-value store in the specified directory.

Keys are percent-encoded as single file names. Empty keys, `.` and `..` are
rejected. Keys are only guaranteed to be distinct on case-sensitive file
systems.

`clear` removes the directory recursively, so it must not be shared with
unrelated data.

**Signature**

```ts
declare const layerFileSystem: (directory: string) => Layer.Layer<KeyValueStore, PlatformError.PlatformError, FileSystem.FileSystem | Path.Path>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/KeyValueStore.ts#L160)

Since v1.0.0