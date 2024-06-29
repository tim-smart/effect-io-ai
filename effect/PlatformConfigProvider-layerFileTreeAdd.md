# layerFileTreeAdd

Add the file tree ConfigProvider to the environment, as a fallback to the current ConfigProvider.

To import and use `layerFileTreeAdd` from the "PlatformConfigProvider" module:

```ts
import * as PlatformConfigProvider from "@effect/platform/PlatformConfigProvider"
// Can be accessed like this
PlatformConfigProvider.layerFileTreeAdd
```

**Signature**

```ts
export declare const layerFileTreeAdd: (options?: {
  readonly rootDirectory?: string
}) => Layer.Layer<never, never, Path.Path | FileSystem.FileSystem>
```
