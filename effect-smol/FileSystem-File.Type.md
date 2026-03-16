Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.File.Type

Enumeration of possible file system entry types.

Represents the different types of entries that can exist in a file system,
from regular files to special device files and symbolic links.

**Signature**

```ts
type Type = | "File"
    | "Directory"
    | "SymbolicLink"
    | "BlockDevice"
    | "CharacterDevice"
    | "FIFO"
    | "Socket"
    | "Unknown"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1083)

Since v4.0.0