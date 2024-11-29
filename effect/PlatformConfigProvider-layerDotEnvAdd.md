# layerDotEnvAdd

Add the dotenv ConfigProvider to the environment, as a fallback to the current ConfigProvider.
If the file is not found, a debug log is produced and empty layer is returned.

To import and use `layerDotEnvAdd` from the "PlatformConfigProvider" module:

ts
import \* as PlatformConfigProvider from "@effect/platform/PlatformConfigProvider"
// Can be accessed like this
PlatformConfigProvider.layerDotEnvAdd
undefined

**Signature**

```ts
export declare const layerDotEnvAdd: (path: string) => Layer.Layer<never, never, FileSystem.FileSystem>
```
