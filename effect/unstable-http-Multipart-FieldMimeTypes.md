Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.FieldMimeTypes

Context reference for MIME type fragments that should be parsed as multipart
fields instead of files.

**Details**

The default treats `application/json` parts as fields.

**Signature**

```ts
declare const FieldMimeTypes: Context.Reference<ReadonlyArray<string>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L830)

Since v4.0.0