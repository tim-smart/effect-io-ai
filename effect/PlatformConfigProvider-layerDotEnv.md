# layerDotEnv

Add the dotenv ConfigProvider to the environment, replacing the current ConfigProvider.

To import and use `layerDotEnv` from the "PlatformConfigProvider" module:

ts
import \* as PlatformConfigProvider from "@effect/platform/PlatformConfigProvider"
// Can be accessed like this
PlatformConfigProvider.layerDotEnv
undefined

**Signature**

```ts
export declare const layerDotEnv: (path: string) => Layer.Layer<never, PlatformError, FileSystem.FileSystem>
```
