Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.withLimits.Options

Options for overriding multipart parser limits.

These settings control maximum part count, field size, file size, total body
size, and MIME types that should be treated as fields instead of files.

**Signature**

```ts
type Options = {
    readonly maxParts?: number | undefined
    readonly maxFieldSize?: FileSystem.SizeInput | undefined
    readonly maxFileSize?: FileSystem.SizeInput | undefined
    readonly maxTotalSize?: FileSystem.SizeInput | undefined
    readonly fieldMimeTypes?: ReadonlyArray<string> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L735)

Since v4.0.0