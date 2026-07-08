Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.FileTypeId

Runtime type identifier attached to `FileSystem.File` handles and used by
`isFile` to recognize them.

**Details**

This marker is part of the runtime representation of file handles. Prefer
`isFile` when narrowing unknown values.

**See**

- `File` for the open file handle shape that carries this marker
- `isFile` for the public guard that checks this marker

**Signature**

```ts
declare const FileTypeId: "~effect/platform/FileSystem/File"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1058)

Since v4.0.0