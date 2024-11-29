# layerFileTree

Add the file tree ConfigProvider to the environment, replacing the current ConfigProvider.

To import and use `layerFileTree` from the "PlatformConfigProvider" module:

ts
import \* as PlatformConfigProvider from "@effect/platform/PlatformConfigProvider"
// Can be accessed like this
PlatformConfigProvider.layerFileTree
undefined

**Signature**

```ts
export declare const layerFileTree: (options?: {
  readonly rootDirectory?: string
}) => Layer.Layer<never, never, Path.Path | FileSystem.FileSystem>
```
