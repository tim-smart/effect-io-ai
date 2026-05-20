Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.limitsServices

Creates a context containing multipart parser limit settings.

**Details**

The context can provide maximum part count, field size, file size, total body
size, and MIME types that should be parsed as fields.

**Signature**

```ts
declare const limitsServices: (options: { readonly maxParts?: number | undefined; readonly maxFieldSize?: FileSystem.SizeInput | undefined; readonly maxFileSize?: FileSystem.SizeInput | undefined; readonly maxTotalSize?: FileSystem.SizeInput | undefined; readonly fieldMimeTypes?: ReadonlyArray<string> | undefined; }) => Context.Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L731)

Since v4.0.0