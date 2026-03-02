Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.make

Creates a FileSystem implementation from a partial implementation.

This function takes a partial FileSystem implementation and automatically provides
default implementations for `exists`, `readFileString`, `stream`, `sink`, and
`writeFileString` methods based on the provided core methods.

**Signature**

```ts
declare const make: (impl: Omit<FileSystem, typeof TypeId | "exists" | "readFileString" | "stream" | "sink" | "writeFileString">) => FileSystem
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L724)

Since v4.0.0