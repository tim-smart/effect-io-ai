Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.MaxFileSize

Context reference for the maximum size of a multipart file part.

**Details**

The default is `undefined`, meaning no explicit per-file limit.

**Signature**

```ts
declare const MaxFileSize: Context.Reference<FileSystem.SizeInput | undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L812)

Since v4.0.0