Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.SingleFileSchema

Schema for exactly one persisted multipart file.

**Details**

The encoded form is a one-element file array, while the decoded value is the
single `PersistedFile`.

**Signature**

```ts
declare const SingleFileSchema: Schema.decodeTo<PersistedFileSchema, Schema.$Array<PersistedFileSchema>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Multipart.ts#L341)

Since v4.0.0