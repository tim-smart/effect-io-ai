Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.isFile

Returns `true` if a value is a `File` handle by checking for the
`FileTypeId` marker.

**When to use**

Use when accepting an unknown value and you need to narrow it to a `File`
before calling file-handle operations.

**Details**

This is a structural marker check. It does not validate the marker value or
the shape of the file handle.

**See**

- `File` for the file-handle interface narrowed by this guard
- `FileTypeId` for the runtime marker checked by this guard

**Signature**

```ts
declare const isFile: (u: unknown) => u is File
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1110)

Since v4.0.0