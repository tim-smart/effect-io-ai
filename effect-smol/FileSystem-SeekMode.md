Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.SeekMode

Specifies the reference point for seeking within an open file.

**When to use**

Use with `File` handles when positioning the cursor before a read or write
and the offset must be interpreted from either the start of the file or the
current cursor.

**Details**

- `"start"` seeks from the beginning of the file.
- `"current"` seeks from the current cursor position.

**See**

- `File` for the open file handle API whose `seek` method consumes this mode

**Signature**

```ts
type SeekMode = "start" | "current"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1275)

Since v4.0.0