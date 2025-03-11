## layerDotEnvAdd

Add the dotenv ConfigProvider to the environment, as a fallback to the current ConfigProvider.
If the file is not found, a debug log is produced and empty layer is returned.

**Signature**

```ts
declare const layerDotEnvAdd: (path: string) => Layer.Layer<never, never, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/PlatformConfigProvider.ts#L133)

Since v1.0.0