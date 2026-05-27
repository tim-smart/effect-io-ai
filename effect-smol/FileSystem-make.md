Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.make

Creates a FileSystem implementation from a partial implementation.

**When to use**

Use to build a concrete `FileSystem` service from platform-specific core
operations while deriving the convenience methods that can be implemented
from them.

**Details**

This function takes a partial FileSystem implementation and automatically provides
default implementations for `exists`, `readFileString`, `stream`, `sink`, and
`writeFileString` methods based on the provided core methods.

**See**

- `makeNoop` for a testing stub that accepts method overrides without requiring a complete implementation
- `layerNoop` for providing a no-op `FileSystem` as a `Layer` in tests

**Signature**

```ts
declare const make: (impl: Omit<FileSystem, typeof TypeId | "exists" | "readFileString" | "stream" | "sink" | "writeFileString">) => FileSystem
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L803)

Since v4.0.0