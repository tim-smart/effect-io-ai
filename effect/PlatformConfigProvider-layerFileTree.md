## layerFileTree

Add the file tree ConfigProvider to the environment, replacing the current ConfigProvider.

**Signature**

```ts
declare const layerFileTree: (options?: { readonly rootDirectory?: string; }) => Layer.Layer<never, never, Path.Path | FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/PlatformConfigProvider.ts#L108)

Since v1.0.0