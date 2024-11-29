# makeNoop

Create a no-op file system that can be used for testing.

To import and use `makeNoop` from the "FileSystem" module:

ts
import \* as FileSystem from "@effect/platform/FileSystem"
// Can be accessed like this
FileSystem.makeNoop
undefined

**Signature**

```ts
export declare const makeNoop: (fileSystem: Partial<FileSystem>) => FileSystem
```
