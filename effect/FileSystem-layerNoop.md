# layerNoop

Create a no-op file system that can be used for testing.

To import and use `layerNoop` from the "FileSystem" module:

```ts
import * as FileSystem from "@effect/platform/FileSystem"
// Can be accessed like this
FileSystem.layerNoop
```

**Signature**

```ts
export declare const layerNoop: (fileSystem: Partial<FileSystem>) => Layer<FileSystem>
```
