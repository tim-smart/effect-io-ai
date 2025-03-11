## layerFileTreeAdd

Add the file tree ConfigProvider to the environment, as a fallback to the current ConfigProvider.

**Signature**

```ts
declare const layerFileTreeAdd: (options?: { readonly rootDirectory?: string; }) => Layer.Layer<never, never, Path.Path | FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/PlatformConfigProvider.ts#L89)

Since v1.0.0