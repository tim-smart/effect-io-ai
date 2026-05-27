Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.FileTypeId

Runtime type identifier attached to `FileSystem.File` handles and used by
`isFile` to recognize them.

**When to use**

Use when implementing a custom `FileSystem` file handle that should be
recognized by `isFile`.

**See**

- `File` for the open file handle shape that carries this marker
- `isFile` for the public guard that checks this marker

**Signature**

```ts
declare const FileTypeId: "~effect/platform/FileSystem/File"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1084)

Since v4.0.0