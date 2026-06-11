Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.layerFileSystem

Provides a `KeyValueStore` backed by files in the specified directory.

**Details**

The directory is created if needed, and each key is encoded as a file name.

**Signature**

```ts
declare const layerFileSystem: (directory: string) => Layer.Layer<KeyValueStore, PlatformError, FileSystem.FileSystem | Path.Path>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L349)

Since v4.0.0