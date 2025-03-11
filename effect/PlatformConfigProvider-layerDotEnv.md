## layerDotEnv

Add the dotenv ConfigProvider to the environment, replacing the current ConfigProvider.

**Signature**

```ts
declare const layerDotEnv: (path: string) => Layer.Layer<never, PlatformError, FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/PlatformConfigProvider.ts#L142)

Since v1.0.0